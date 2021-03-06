from flask import Flask, request, abort

app = Flask(__name__)


@app.route('/webhook', methods=['POST'])
def webhook():
    if request.method == 'POST':
        return request.json, 200
    else:
        abort(400)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
