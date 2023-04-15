from flask import current_app as app, session, request, url_for, redirect, flash
from flask import render_template
from application.models import (
    Properties,
    isValidUser,
    Holds,
    Brokers,
    Shows,
    Clients,
    Sellers,
    Sells,
)


@app.route("/agent/<agentID>/dashboard")
def agent(agentID):
    if "userID" in session.keys() and session["userID"] == agentID:
        agentProperties = (
            Properties.query.join(Shows).filter(Shows.License_ID == agentID).all()
        )
        recentlySoldProperties = (
            Properties.query.join(Shows)
            .filter(Shows.License_ID == agentID)
            .filter(Properties.Status == "Sold")
            .filter(Properties.Sell_Price != None)
            .order_by(Properties.Sell_Date.desc())
            .all()
        )

        sale = sum([property.Sell_Price for property in recentlySoldProperties])

        numberOfProperties = len(agentProperties)

        return render_template(
            "agent/agent.html",
            numberOfProperties=numberOfProperties,
            recently_sold_properties=recentlySoldProperties,
            numberOfCustomers=numberOfProperties,
            sale=sale,
            agentID=agentID,
        )
    else:
        return redirect(url_for("home"))


@app.route("/agent/<agentID>/profile")
def agentProfile(agentID):
    return render_template("profile.html", agentID=agentID)


@app.route("/agent/<agentID>/properties")
def agentProperties(agentID):
    soldProperties = (
        Properties.query.join(Shows)
        .filter(Shows.License_ID == agentID)
        .filter(Properties.Status == "Sold")
        .all()
    )
    pendingProperties = (
        Properties.query.join(Shows)
        .filter(Shows.License_ID == agentID)
        .filter(Properties.Status == "Available")
        .all()
    )
    return render_template(
        "agent/properties.html",
        agentID=agentID,
        pendingProperties=pendingProperties,
        soldProperties=soldProperties,
    )


@app.route("/agent/<agentID>/customers")
def agentCustomers(agentID):
    clients = (
        Clients.query.join(Holds, Holds.Client_ID == Clients.Client_ID)
        .join(Properties, Properties.P_ID == Holds.P_ID)
        .join(Shows, Shows.P_ID == Properties.P_ID)
        .filter(Shows.License_ID == agentID)
        .all()
    )
    sellers = (
        Sellers.query.join(Sells)
        .join(Properties, Properties.P_ID == Sells.P_ID)
        .join(Shows, Shows.P_ID == Properties.P_ID)
        .filter(Shows.License_ID == agentID)
        .all()
    )
    return render_template(
        "agent/customers.html", agentID=agentID, clients=clients, sellers=sellers
    )
