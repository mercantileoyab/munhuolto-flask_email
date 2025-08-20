from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("base.html")

@app.route("/reservation-confirmation", methods=["POST"])
def reservation_confirmation():
    # Get JSON data from request body 
    data = request.get_json() or {}
    print("Received data:", data) 
    # print("Received data:", data)
    return render_template("reservationConfirmation.html", **data)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3005, debug=True)