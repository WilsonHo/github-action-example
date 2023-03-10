from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, World! I am a docker container need to rebuid"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
