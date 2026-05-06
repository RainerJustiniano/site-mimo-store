// api/banners.js — Salva/carrega banners no Neon (sem limite de localStorage)
import { neon } from '@neondatabase/serverless';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  if (req.method === 'OPTIONS') return res.status(200).end();

  const sql = neon(process.env.DATABASE_URL);

  await sql`
    CREATE TABLE IF NOT EXISTS banners_config (
      chave TEXT PRIMARY KEY,
      imagem TEXT NOT NULL,
      atualizado_em TIMESTAMP DEFAULT NOW()
    )
  `;

  // GET — retorna todos os banners como objeto {chave: base64}
  if (req.method === 'GET') {
    const rows = await sql`SELECT chave, imagem FROM banners_config`;
    const banners = {};
    rows.forEach(r => banners[r.chave] = r.imagem);
    return res.status(200).json(banners);
  }

  // POST — salva ou atualiza um banner
  if (req.method === 'POST') {
    const { chave, imagem } = req.body;
    if (!chave || !imagem) {
      return res.status(400).json({ error: 'Envie { chave, imagem }' });
    }
    await sql`
      INSERT INTO banners_config (chave, imagem)
      VALUES (${chave}, ${imagem})
      ON CONFLICT (chave) DO UPDATE SET imagem = ${imagem}, atualizado_em = NOW()
    `;
    return res.status(200).json({ ok: true, chave });
  }

  res.status(405).end();
}
