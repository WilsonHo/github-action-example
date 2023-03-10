from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, World! I am a docker container 1"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
