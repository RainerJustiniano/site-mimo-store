import { sql, initDB } from '../lib/db.js';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
  if (req.method === 'OPTIONS') return res.status(200).end();

  // Apenas GET é público; o resto exige auth
  if (req.method !== 'GET') {
    const auth = req.headers['authorization'];
    if (auth !== `Bearer ${process.env.ADMIN_PASSWORD}`) {
      return res.status(401).json({ error: 'Não autorizado' });
    }
  }

  await initDB();

  try {
    if (req.method === 'GET') {
      const { rows } = await sql`SELECT * FROM fornecedores ORDER BY nome`;
      return res.status(200).json(rows);
    }

    if (req.method === 'POST') {
      const { nome, contato, telefone, email, notas } = req.body;
      if (!nome) return res.status(400).json({ error: 'Nome obrigatório' });
      const { rows } = await sql`
        INSERT INTO fornecedores (nome, contato, telefone, email, notas)
        VALUES (${nome}, ${contato}, ${telefone}, ${email}, ${notas})
        RETURNING *
      `;
      return res.status(201).json({ ok: true, fornecedor: rows[0] });
    }

    if (req.method === 'PUT') {
      const { id } = req.query;
      const { nome, contato, telefone, email, notas } = req.body;
      const { rows } = await sql`
        UPDATE fornecedores SET
          nome     = COALESCE(${nome}, nome),
          contato  = COALESCE(${contato}, contato),
          telefone = COALESCE(${telefone}, telefone),
          email    = COALESCE(${email}, email),
          notas    = COALESCE(${notas}, notas)
        WHERE id = ${id} RETURNING *
      `;
      if (!rows.length) return res.status(404).json({ error: 'Fornecedor não encontrado' });
      return res.status(200).json({ ok: true, fornecedor: rows[0] });
    }

    if (req.method === 'DELETE') {
      const { id } = req.query;
      await sql`DELETE FROM fornecedores WHERE id = ${id}`;
      return res.status(200).json({ ok: true });
    }

    return res.status(405).json({ error: 'Método não permitido' });
  } catch (err) {
    console.error('[/api/fornecedores]', err);
    return res.status(500).json({ error: 'Erro interno', detail: err.message });
  }
}
