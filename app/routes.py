from app import app
from flask import Flask, jsonify, request

@app.route('/')
@app.route('/index')
def index():
    return jsonify("{'message': 'Hello World'}")
