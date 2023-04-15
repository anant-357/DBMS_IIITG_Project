from flask import current_app as app, session, request, url_for, redirect, flash
from flask import render_template
from application.models import (
    Properties,
    Holds,
    Brokers,
)


@app.route("/admin/dashboard")
def admin():
    net_payment = 0
    net_rent = 0
    net_pending = 0
    soldProperties = (
        Properties.query.join(Holds).filter(Properties.Sell_Date != None).all()
    )
    unsoldProperties = (
        Properties.query.join(Holds).filter(Properties.Sell_Date == None).all()
    )

    properties = (
        Properties.query.filter(Properties.Sell_Date != None)
        .order_by(Properties.Sell_Date.desc())
        .limit(6)
        .all()
    )

    bestPrice = (
        Properties.query.filter(Properties.Status == "sold")
        .filter(Properties.Sell_Date != None)
        .order_by(Properties.Sell_Price)
        .first()
    )

    qualityBroker = None

    quantityBroker = None

    numberOfLocalities = len(Brokers.query.all())

    candidates = Brokers.query.filter(Brokers.Properties)

    for property in soldProperties:
        if property.Rent == True:
            net_rent += property.Sell_Price
        net_payment += property.Sell_Price

    for property in unsoldProperties:
        net_pending += property.Price
    return render_template(
        "admin/admin.html",
        net_payment=net_payment,
        net_rent=net_rent,
        net_pending=net_pending,
        properties=properties,
        bestPrice=bestPrice.Sell_Price,
        numberOfLocalities=numberOfLocalities,
    )


@app.route("/admin/agents")
def agents():
    brokers = Brokers.query.all()
    return render_template("admin/agents.html", brokers=brokers)


@app.route("/admin/settings")
def adminSettings():
    return render_template("admin/settings.html")
