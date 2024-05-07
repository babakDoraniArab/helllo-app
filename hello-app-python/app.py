import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    app_name = os.getenv("APP_NAME", "DefaultApp")
    return f"Hello, world! This is app {app_name}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
