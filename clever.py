import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, Clever Cloud!'

if __name__ == '__main__':
    # Ambil nilai PORT dari variabel lingkungan, atau gunakan 8080 sebagai nilai default
    port = int(os.environ.get('PORT', 8080))
    
    # Jalankan aplikasi Flask
    app.run(debug=True, host='0.0.0.0', port=port)
