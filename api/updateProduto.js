import { sql } from '../lib/db.js';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'PUT, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'PUT') return res.status(405).json({ error: 'Método não permitido' });

  const auth = req.headers['authorization'];
  if (auth !== `Bearer ${process.env.ADMIN_PASSWORD}`) {
    return res.status(401).json({ error: 'Não autorizado' });
  }

  try {
    const { id } = req.query;
    if (!id) return res.status(400).json({ error: 'ID obrigatório' });

    const {
      nome, marca, modelo, preco, preco_old,
      imagem, categoria, tipo, bateria,
      armazenamento, cor, status, destaque
    } = req.body;

    const { rows } = await sql`
      UPDATE produtos SET
        nome          = COALESCE(${nome}, nome),
        marca         = COALESCE(${marca}, marca),
        modelo        = COALESCE(${modelo}, modelo),
        preco         = COALESCE(${preco}, preco),
        preco_old     = COALESCE(${preco_old}, preco_old),
        imagem        = COALESCE(${imagem}, imagem),
        categoria     = COALESCE(${categoria}, categoria),
        tipo          = COALESCE(${tipo}, tipo),
        bateria       = COALESCE(${bateria}, bateria),
        armazenamento = COALESCE(${armazenamento}, armazenamento),
        cor           = COALESCE(${cor}, cor),
        status        = COALESCE(${status}, status),
        destaque      = COALESCE(${destaque}, destaque)
      WHERE id = ${id}
      RETURNING *
    `;

    if (!rows.length) return res.status(404).json({ error: 'Produto não encontrado' });
    return res.status(200).json({ ok: true, produto: rows[0] });
  } catch (err) {
    console.error('[PUT /api/updateProduto]', err);
    return res.status(500).json({ error: 'Erro ao atualizar produto', detail: err.message });
  }
}
