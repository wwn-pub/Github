from flask import Flask, render_template

app = Flask(__name__)

# This is a "Route". When you visit the home page (/), this function runs.
@app.route('/')
def home():
    return "<h1>Welcome to my Python Web App!</h1><p>It's alive!</p>"

# You can also pass data to a dynamic route
@app.route('/user/<name>')
def greet(name):
    return f"Hello, {name}! Nice to meet you."

if __name__ == '__main__':
    app.run(debug=True, port=8080, host='0.0.0.0')
