<<<<<<< HEAD
# Mimo Store

Uma loja profissional de produtos com backend Flask e frontend separado.

## Funcionalidades

- **Visualização de Produtos**: Página pública com cards de produtos, mostrando preço, especificações, e bateria para semi-novos.
- **Área Admin**: Login para gerenciar produtos (adicionar, editar, excluir) com upload de imagens.
- **Design**: Tema rosa delicado, layout responsivo.
- **Upload de Imagens**: Carregue imagens do seu PC diretamente no admin.

## Backend

- Flask API com SQLAlchemy (SQLite).
- Autenticação simples para admin (usuário: admin, senha: admin).
- Rotas: GET/POST/PUT/DELETE para produtos, upload de arquivos.

### Como executar

1. Instalar dependências: `pip install -r requirements.txt`
2. Executar: `python app.py`

O servidor roda em http://localhost:5000

## Frontend

Página HTML/JS/CSS separada para visualização.

Abra `frontend/index.html` no navegador.

## Acesso

- **Página Principal**: Abra `frontend/index.html`
- **Admin**: http://localhost:5000/login (usuário: admin, senha: admin)

## Upload de Imagens

No admin, selecione um arquivo de imagem ou insira uma URL. As imagens carregadas são salvas em `backend/static/images/` e servidas automaticamente.

## Sugestões

- Adicionar mais validações no frontend/backend.
- Implementar paginação para muitos produtos.
- Melhorar segurança da autenticação (usar Flask-Login ou JWT).

- **Página Principal**: Abra `frontend/index.html`
- **Admin**: http://localhost:5000/login (usuário: admin, senha: admin)

## Sugestões

- Adicionar mais validações no frontend/backend.
- Implementar upload de imagens.
- Adicionar paginação para muitos produtos.
- Melhorar segurança da autenticação (usar Flask-Login ou JWT).
=======
# site-mimo-store
>>>>>>> 7150f246eefa37b59e48312317f5e34423d1de82
