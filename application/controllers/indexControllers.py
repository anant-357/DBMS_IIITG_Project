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
    Sells,Photos
)


@app.route("/", methods=["GET", "POST"])
def home():
    if request.method == "GET":
        properties = Properties.query.join(Photos).all()
        if "badlogin" in session.keys():
            session.pop("badlogin")
            flash("Either userID or Password is wrong!")
        return render_template("home/index.html", properties=properties)

    elif request.method == "POST":
        user_id = request.form["userID"]
        password = request.form["password"]
        type = request.form["type"]
        validity = isValidUser(user_id, password, type)
        if validity[0]:
            session["userID"] = user_id
            session["type"] = type
            session["username"] = validity[1]
            return redirect(url_for("home"))
        else:
            session["badlogin"] = True
        return redirect(url_for("home"))


@app.route("/logout")
def logout():
    session.pop("username")
    session.pop("type")
    session.pop("userID")
    return redirect(url_for("home"))


@app.route("/aboutUs")
def aboutUs():
    return render_template("home/aboutUs.html")


@app.route("/contactUs")
def contactUs():
    return render_template("home/contact.html")


@app.route("/addProperty")
def addProperty():
    return render_template("home/addProp.html")
