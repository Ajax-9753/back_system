from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/flask/api/health')
def health():
    return jsonify({'status': 'ok', 'framework': 'flask'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
