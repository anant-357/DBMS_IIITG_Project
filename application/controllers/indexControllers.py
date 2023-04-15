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

@app.route("/")
def home():
    properties = Properties.query.all()
    return render_template("home/index.html", properties=properties)


@app.route("/login")
def login():
    if request.method == "POST":
        user_name = request.form["userID"]
        password = request.form["password"]
        isAdmin = False
        try:
            if request.form["isAdmin"] == "on":
                isAdmin = True
        except:
            pass

        if isAdmin and isValidUser(user_name, password, isAdmin):
            session["username"] = user_name
            session["admin"] = True
            session["badlogin"] = False
            return redirect(url_for("adminDashboard"))
        elif isValidUser(user_name, password, isAdmin):
            session["username"] = user_name
            session["admin"] = False
            session["badlogin"] = False
            return redirect(url_for("userDashboard"), username=session["username"])
        else:
            session["badlogin"] = True

    if "badlogin" in session.keys():
        session.pop("badlogin")
        flash("Either Username or Password is wrong!")
        return render_template("index.html")
    else:
        return render_template("index.html")


@app.route("/logout")
def logout():
    return "logout"


@app.route("/aboutUs")
def aboutUs():
    return render_template("home/aboutUs.html")


@app.route("/contactUs")
def contactUs():
    return render_template("home/contact.html")


@app.route("/addProperty")
def addProperty():
    return render_template("home/addProp.html")

