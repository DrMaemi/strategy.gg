from flask import Flask, request, jsonify

app = Flask(__name__)

host_addr = "0.0.0.0"

@app.route("/")
def route():
    return "Welcome to Strategy.gg back-end server."

if __name__ == "__main__":
    app.run(host_addr, port=5000, threaded=True)