import { sql } from '../lib/db.js';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'DELETE, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'DELETE') return res.status(405).json({ error: 'Método não permitido' });

  const auth = req.headers['authorization'];
  if (auth !== `Bearer ${process.env.ADMIN_PASSWORD}`) {
    return res.status(401).json({ error: 'Não autorizado' });
  }

  try {
    const { id } = req.query;
    if (!id) return res.status(400).json({ error: 'ID obrigatório' });

    const { rows } = await sql`DELETE FROM produtos WHERE id = ${id} RETURNING id`;
    if (!rows.length) return res.status(404).json({ error: 'Produto não encontrado' });

    return res.status(200).json({ ok: true, id: rows[0].id });
  } catch (err) {
    console.error('[DELETE /api/deleteProduto]', err);
    return res.status(500).json({ error: 'Erro ao deletar produto', detail: err.message });
  }
}
