import { neon } from '@neondatabase/serverless';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  
  if (req.method === 'OPTIONS') return res.status(200).end();

  const sql = neon(process.env.DATABASE_URL);
  
  await sql`
    CREATE TABLE IF NOT EXISTS produtos (
      id SERIAL PRIMARY KEY,
      dados JSONB NOT NULL,
      criado_em TIMESTAMP DEFAULT NOW()
    )
  `;
  
  if (req.method === 'GET') {
    const rows = await sql`SELECT dados FROM produtos ORDER BY criado_em DESC`;
    return res.json(rows.map(r => r.dados));
  }
  
  if (req.method === 'POST') {
    const { produtos } = req.body;
    await sql`DELETE FROM produtos`;
    for (const p of produtos) {
      await sql`INSERT INTO produtos (dados) VALUES (${JSON.stringify(p)})`;
    }
    return res.json({ ok: true });
  }
  
  res.status(405).end();
}