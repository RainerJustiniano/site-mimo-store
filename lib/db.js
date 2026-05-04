import { sql } from '@vercel/postgres';

// Inicializa as tabelas se não existirem
export async function initDB() {
  await sql`
    CREATE TABLE IF NOT EXISTS produtos (
      id        SERIAL PRIMARY KEY,
      nome      TEXT    NOT NULL,
      marca     TEXT,
      modelo    TEXT,
      preco     NUMERIC NOT NULL,
      preco_old NUMERIC,
      imagem    TEXT,
      categoria TEXT,
      tipo      TEXT    DEFAULT 'novo',
      bateria   TEXT,
      armazenamento TEXT,
      cor       TEXT,
      status    TEXT    DEFAULT 'disponivel',
      destaque  BOOLEAN DEFAULT false,
      criado_em TIMESTAMP DEFAULT NOW()
    );
  `;

  await sql`
    CREATE TABLE IF NOT EXISTS fornecedores (
      id        SERIAL PRIMARY KEY,
      nome      TEXT NOT NULL,
      contato   TEXT,
      telefone  TEXT,
      email     TEXT,
      notas     TEXT,
      criado_em TIMESTAMP DEFAULT NOW()
    );
  `;
}

export { sql };
