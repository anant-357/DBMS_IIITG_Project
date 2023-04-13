from flask import current_app as app
from flask import render_template
from application.models import Properties


@app.route("/")
def home():
    properties = Properties.query.all()
    return render_template("index.html", properties=properties)


@app.route("/login")
def login():
    return "login"


@app.route("/logout")
def logout():
    return "logout"


@app.route("/aboutUs")
def aboutUs():
    return render_template("aboutUs.html")


@app.route("/contactUs")
def contactUs():
    return render_template("contact.html")


@app.route("/addProperty")
def addProperty():
    return render_template("addProp.html")


@app.route("/admin/dashboard")
def admin():
    return render_template("admin.html")


@app.route("/admin/agents")
def agents():
    return render_template("new_agent.html")
