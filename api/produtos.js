import { sql, initDB } from '../lib/db.js';

export default async function handler(req, res) {
  // CORS
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, OPTIONS');
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'GET') return res.status(405).json({ error: 'Método não permitido' });

  try {
    await initDB();

    const { tipo, categoria, status, destaque } = req.query;

    let conditions = [];
    if (tipo)      conditions.push(`tipo = '${tipo}'`);
    if (categoria) conditions.push(`categoria = '${categoria}'`);
    if (status)    conditions.push(`status = '${status}'`);
    else           conditions.push(`status = 'disponivel'`);
    if (destaque)  conditions.push(`destaque = true`);

    const where = conditions.length ? `WHERE ${conditions.join(' AND ')}` : '';

    const { rows } = await sql.query(
      `SELECT * FROM produtos ${where} ORDER BY criado_em DESC`
    );

    return res.status(200).json(rows);
  } catch (err) {
    console.error('[GET /api/produtos]', err);
    return res.status(500).json({ error: 'Erro ao buscar produtos', detail: err.message });
  }
}
