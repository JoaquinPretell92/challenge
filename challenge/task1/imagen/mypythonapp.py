from flask import Flask

app = Flask(__name__)

@app.route('/', methods=['GET'])
def probe():
   return 'Prueba de API'

@app.route('/greetings', methods=['GET'])
def message():
    return 'Hello World from @HOSTNAME'

@app.route('/square', methods=['POST'])
def square():
    if request.method == 'POST':
        numero = int(numero)
        potencia = eval("numero * 2")
        return potencia

    
app.run(host='0.0.0.0', port=8080)