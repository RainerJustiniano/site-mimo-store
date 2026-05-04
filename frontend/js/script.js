/* ═══════════════════════════════════════════════
   MIMO STORE — script.js
   ═══════════════════════════════════════════════ */

const WPP    = '5565996480119';
const API    = '/api/produtos';
const FALLBACK = 'data/produtos.json'; // usado no dev local sem banco

let allProdutos = [];
let filtroAtivo = 'todos';
let busca = '';

/* ── INIT ────────────────────────────────────── */
document.addEventListener('DOMContentLoaded', () => {
  carregarProdutos();
  iniciarFiltros();
  iniciarBusca();
});

/* ── FETCH ───────────────────────────────────── */
async function carregarProdutos() {
  mostrarSkeletons();

  try {
    // Tenta a API serverless primeiro
    const res = await fetch(API);
    if (!res.ok) throw new Error('API indisponível');
    allProdutos = await res.json();
  } catch {
    // Fallback para JSON local (desenvolvimento)
    console.info('[MimoStore] Usando fallback local data/produtos.json');
    try {
      const res = await fetch(FALLBACK);
      allProdutos = await res.json();
    } catch (e) {
      mostrarErro();
      return;
    }
  }

  renderProdutos();
  renderHero();
  atualizarStats();
}

/* ── RENDER HERO ─────────────────────────────── */
function renderHero() {
  const destaque = allProdutos.find(p => p.destaque) || allProdutos[0];
  if (!destaque) return;

  const img  = document.getElementById('hero-img');
  const nome = document.getElementById('hero-nome');
  const preco= document.getElementById('hero-preco');

  if (img   && destaque.imagem) img.src = destaque.imagem;
  if (nome)   nome.textContent  = `${destaque.marca} ${destaque.modelo}`;
  if (preco)  preco.textContent = `R$ ${formatPreco(destaque.preco)}`;
}

/* ── STATS ───────────────────────────────────── */
function atualizarStats() {
  const total = allProdutos.length;
  const disponiveis = allProdutos.filter(p => p.status === 'disponivel').length;
  const marcas = [...new Set(allProdutos.map(p => p.marca).filter(Boolean))].length;

  setEl('stat-total',      total);
  setEl('stat-disponiveis', disponiveis);
  setEl('stat-marcas',     marcas);
}
function setEl(id, val) {
  const el = document.getElementById(id);
  if (el) el.textContent = val;
}

/* ── RENDER PRODUTOS ─────────────────────────── */
function renderProdutos() {
  let lista = [...allProdutos];

  // Filtro categoria/tipo
  if (filtroAtivo !== 'todos') {
    lista = lista.filter(p =>
      p.tipo === filtroAtivo ||
      p.categoria === filtroAtivo ||
      p.marca?.toLowerCase() === filtroAtivo
    );
  }

  // Busca por texto
  if (busca.trim()) {
    const q = busca.toLowerCase();
    lista = lista.filter(p =>
      [p.nome, p.marca, p.modelo, p.cor, p.armazenamento, p.categoria]
        .filter(Boolean)
        .some(v => v.toLowerCase().includes(q))
    );
  }

  const grid = document.getElementById('products-grid');
  if (!grid) return;

  if (!lista.length) {
    grid.innerHTML = `
      <div class="state-empty">
        <div class="big-ico">🔍</div>
        <p>Nenhum produto encontrado. Tente outro filtro!</p>
      </div>`;
    return;
  }

  grid.innerHTML = lista.map((p, i) => cardHTML(p, i)).join('');

  // Lazy load
  document.querySelectorAll('.card-img[data-src]').forEach(img => {
    const obs = new IntersectionObserver(entries => {
      entries.forEach(e => {
        if (e.isIntersecting) {
          e.target.src = e.target.dataset.src;
          obs.unobserve(e.target);
        }
      });
    }, { rootMargin: '200px' });
    obs.observe(img);
  });
}

/* ── CARD HTML ───────────────────────────────── */
function cardHTML(p, idx) {
  const vendido  = p.status === 'vendido';
  const imgSrc   = p.imagem || '';
  const placeholder = 'data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" width="400" height="260"%3E%3Crect width="400" height="260" fill="%23fdf2f8"/%3E%3Ctext x="50%25" y="50%25" dominant-baseline="middle" text-anchor="middle" fill="%23f9a8cc" font-size="40"%3E🌸%3C/text%3E%3C/svg%3E';

  const msg = encodeURIComponent(
    `Olá! Tenho interesse no *${p.marca} ${p.modelo}* ${p.armazenamento || ''} ${p.cor || ''}`.trim()
  );

  // Barra de bateria
  let batHTML = '';
  if (p.bateria) {
    const pct = parseInt(p.bateria);
    const cls = pct >= 80 ? '' : pct >= 50 ? 'warn' : 'low';
    batHTML = `
      <div class="card-bat">
        🔋 ${pct}%
        <div class="bat-bar"><div class="bat-fill ${cls}" style="width:${pct}%"></div></div>
      </div>`;
  }

  // Preço antigo
  const precoOld = p.preco_old
    ? `<span class="card-price-old">R$ ${formatPreco(p.preco_old)}</span>`
    : '';

  return `
    <article class="card" style="animation-delay:${idx * 60}ms">
      <div class="card-img-wrap">
        <img
          class="card-img"
          src="${placeholder}"
          data-src="${imgSrc || placeholder}"
          alt="${p.nome}"
          loading="lazy"
          onerror="this.src='${placeholder}'"
        >
        ${p.destaque && !vendido ? '<span class="badge-destaque">⭐ Destaque</span>' : ''}
        ${vendido ? '<div class="badge-vendido">VENDIDO</div>' : ''}
      </div>
      <div class="card-body">
        <div class="card-chips">
          <span class="chip ${vendido ? 'chip-vendido' : p.tipo === 'semi-novo' ? 'chip-seminovo' : 'chip-novo'}">
            ${vendido ? 'Vendido' : p.tipo === 'semi-novo' ? 'Semi-novo' : 'Novo'}
          </span>
          ${p.marca ? `<span class="chip chip-marca">${p.marca}</span>` : ''}
        </div>
        <div class="card-title">${p.nome || `${p.marca} ${p.modelo}`}</div>
        <div class="card-sub">${[p.armazenamento, p.cor].filter(Boolean).join(' • ')}</div>
        ${batHTML}
        <div class="card-price-row">
          <span class="card-price">R$ ${formatPreco(p.preco)}</span>
          ${precoOld}
        </div>
        ${vendido
          ? `<div class="btn-wpp-off">Produto indisponível</div>`
          : `<a class="btn-wpp" href="https://wa.me/${WPP}?text=${msg}" target="_blank" rel="noopener">
               💬 Comprar pelo WhatsApp
             </a>`
        }
      </div>
    </article>`;
}

/* ── FILTROS ─────────────────────────────────── */
function iniciarFiltros() {
  document.querySelectorAll('.filter-btn').forEach(btn => {
    btn.addEventListener('click', () => {
      document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      filtroAtivo = btn.dataset.filter;
      renderProdutos();
    });
  });
}

/* ── BUSCA ───────────────────────────────────── */
function iniciarBusca() {
  const input = document.getElementById('busca');
  if (!input) return;
  input.addEventListener('input', () => {
    busca = input.value;
    renderProdutos();
  });
}

/* ── SKELETONS / ERRO ────────────────────────── */
function mostrarSkeletons() {
  const grid = document.getElementById('products-grid');
  if (!grid) return;
  grid.innerHTML = Array(4).fill(0).map(() => `
    <div class="card">
      <div class="skeleton" style="height:260px;border-radius:20px 20px 0 0"></div>
      <div class="card-body" style="gap:10px">
        <div class="skeleton" style="height:16px;width:60%;border-radius:8px"></div>
        <div class="skeleton" style="height:20px;width:80%;border-radius:8px"></div>
        <div class="skeleton" style="height:14px;width:50%;border-radius:8px"></div>
        <div class="skeleton" style="height:32px;border-radius:8px;margin-top:12px"></div>
        <div class="skeleton" style="height:44px;border-radius:12px;margin-top:6px"></div>
      </div>
    </div>`).join('');
}

function mostrarErro() {
  const grid = document.getElementById('products-grid');
  if (!grid) return;
  grid.innerHTML = `
    <div class="state-empty">
      <div class="big-ico">⚠️</div>
      <p>Não foi possível carregar os produtos.<br>Verifique sua conexão.</p>
    </div>`;
}

/* ── UTILS ───────────────────────────────────── */
function formatPreco(v) {
  return Number(v).toLocaleString('pt-BR', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
}
