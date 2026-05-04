import { sql, initDB } from '../lib/db.js';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
  if (req.method === 'OPTIONS') return res.status(200).end();
  if (req.method !== 'POST') return res.status(405).json({ error: 'Método não permitido' });

  // Autenticação simples via header
  const auth = req.headers['authorization'];
  if (auth !== `Bearer ${process.env.ADMIN_PASSWORD}`) {
    return res.status(401).json({ error: 'Não autorizado' });
  }

  try {
    await initDB();

    const {
      nome, marca, modelo, preco, preco_old,
      imagem, categoria, tipo, bateria,
      armazenamento, cor, status, destaque
    } = req.body;

    if (!nome || !preco) {
      return res.status(400).json({ error: 'Campos obrigatórios: nome, preco' });
    }

    const { rows } = await sql`
      INSERT INTO produtos
        (nome, marca, modelo, preco, preco_old, imagem, categoria, tipo, bateria, armazenamento, cor, status, destaque)
      VALUES
        (${nome}, ${marca}, ${modelo}, ${preco}, ${preco_old || null},
         ${imagem}, ${categoria}, ${tipo || 'novo'}, ${bateria},
         ${armazenamento}, ${cor}, ${status || 'disponivel'}, ${destaque || false})
      RETURNING *
    `;

    return res.status(201).json({ ok: true, produto: rows[0] });
  } catch (err) {
    console.error('[POST /api/addProduto]', err);
    return res.status(500).json({ error: 'Erro ao adicionar produto', detail: err.message });
  }
}
