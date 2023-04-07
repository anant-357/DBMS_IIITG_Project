from flask import current_app as app


@app.route("/")
def home():
    return "home"

@app.route("/login")
def login():
    return "login"

@app.route("/logout")
def logout():
    return "logout"

