from flask import Flask, request, jsonify, render_template, session, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS
from werkzeug.utils import secure_filename
import os

app = Flask(__name__)
CORS(app)
app.secret_key = 'supersecretkey'

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///produtos.db'
db = SQLAlchemy(app)

class Produto(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    marca = db.Column(db.String(50))
    modelo = db.Column(db.String(100))
    armazenamento = db.Column(db.String(20))
    cor = db.Column(db.String(50))
    preco = db.Column(db.Float)
    tipo = db.Column(db.String(20))
    bateria = db.Column(db.String(10))
    imagem = db.Column(db.String(200))
    status = db.Column(db.String(20), default="disponivel")

@app.route("/produtos", methods=["GET"])
def get_produtos():
    produtos = Produto.query.all()
    return jsonify([
        {
            "id": p.id,
            "marca": p.marca,
            "modelo": p.modelo,
            "armazenamento": p.armazenamento,
            "cor": p.cor,
            "preco": p.preco,
            "tipo": p.tipo,
            "bateria": p.bateria,
            "imagem": p.imagem,
            "status": p.status
        } for p in produtos
    ])

@app.route("/produtos", methods=["POST"])
def add_produto():
    data = request.json
    produto = Produto(**data)
    db.session.add(produto)
    db.session.commit()
    return jsonify({"msg": "Produto adicionado"})

@app.route("/produtos/<int:id>", methods=["DELETE"])
def delete_produto(id):
    produto = Produto.query.get(id)
    db.session.delete(produto)
    db.session.commit()
    return jsonify({"msg": "Deletado"})

@app.route("/produtos/<int:id>", methods=["GET"])
def get_produto(id):
    produto = Produto.query.get(id)
    if not produto:
        return jsonify({"msg": "Produto não encontrado"}), 404
    return jsonify({
        "id": produto.id,
        "marca": produto.marca,
        "modelo": produto.modelo,
        "armazenamento": produto.armazenamento,
        "cor": produto.cor,
        "preco": produto.preco,
        "tipo": produto.tipo,
        "bateria": produto.bateria,
        "imagem": produto.imagem,
        "status": produto.status
    })

@app.route("/produtos/<int:id>", methods=["PUT"])
def update_produto(id):
    data = request.json
    produto = Produto.query.get(id)
    if not produto:
        return jsonify({"msg": "Produto não encontrado"}), 404
    for key, value in data.items():
        if hasattr(produto, key):
            setattr(produto, key, value)
    db.session.commit()
    return jsonify({"msg": "Produto atualizado"})

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username = request.form['username']
        password = request.form['password']
        if username == 'admin' and password == 'admin':
            session['logged_in'] = True
            return redirect(url_for('admin'))
        return "Credenciais inválidas"
    return render_template("login.html")

@app.route("/admin")
def admin():
    if not session.get('logged_in'):
        return redirect(url_for('login'))
    return render_template("admin.html")

@app.route("/logout")
def logout():
    session.pop('logged_in', None)
    return redirect(url_for('index'))

@app.route("/upload", methods=["POST"])
def upload_file():
    if 'file' not in request.files:
        return jsonify({"error": "No file"}), 400
    file = request.files['file']
    if file.filename == '':
        return jsonify({"error": "No selected file"}), 400
    filename = secure_filename(file.filename)
    file.save(os.path.join(app.root_path, 'static', 'images', filename))
    return jsonify({"url": f"/static/images/{filename}"})

if __name__ == "__main__":
    with app.app_context():
        db.create_all()
    app.run(debug=True)