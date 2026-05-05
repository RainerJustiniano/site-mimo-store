import { neon } from '@neondatabase/serverless';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  if (req.method === 'OPTIONS') return res.status(200).end();

  const sql = neon(process.env.DATABASE_URL);

  await sql`
    CREATE TABLE IF NOT EXISTS produtos_config (
      id INTEGER DEFAULT 1 PRIMARY KEY,
      lista JSONB NOT NULL DEFAULT '[]'
    )
  `;

  if (req.method === 'GET') {
    const rows = await sql`SELECT lista FROM produtos_config WHERE id = 1`;
    return res.status(200).json(rows.length ? rows[0].lista : []);
  }

  if (req.method === 'POST') {
    const { produtos } = req.body;
    if (!Array.isArray(produtos)) {
      return res.status(400).json({ error: 'Envie { produtos: [...] }' });
    }
    const lista = JSON.stringify(produtos);
    await sql`
      INSERT INTO produtos_config (id, lista)
      VALUES (1, ${lista}::jsonb)
      ON CONFLICT (id) DO UPDATE SET lista = ${lista}::jsonb
    `;
    return res.status(200).json({ ok: true, total: produtos.length });
  }

  res.status(405).end();
}