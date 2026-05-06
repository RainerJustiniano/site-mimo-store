<script>
// \u2550\u2550 DADOS \u2550\u2550
let P = JSON.parse(localStorage.getItem('mimo_v2') || 'null');

// Carregar do banco de dados ao iniciar
async function carregarDoBanco() {
  try {
    const res = await fetch('/api/produtos');
    if (res.ok) {
      const dados = await res.json();
      if (dados && dados.length > 0) {
        if (dados.length >= P.length) {
          P = dados;
          localStorage.setItem('mimo_v2', JSON.stringify(P));
          nxtId = Math.max(...P.map(x=>x.id))+1;
          renderAll();
          console.log('Produtos carregados do banco:', P.length);
        } else {
          console.log('Local tem mais (' + P.length + '), sincronizando para banco...');
          fetch('/api/produtos',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({produtos:P})});
        }
      } else {
        console.log('Banco vazio, salvando', P.length, 'produtos...');
        fetch('/api/produtos',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({produtos:P})});
      }
    }
  } catch(e) {
    console.log('Usando dados locais:', e);
  }
}

if(!P) P = [
  {id:1,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"Preto",orig:"\u2014",bat:85,custo:1150,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:2,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"Verde",orig:"\u2014",bat:84,custo:1150,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:3,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"Lil\u00E1s",orig:"\u2014",bat:81,custo:1150,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:4,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"Vermelho",orig:"\u2014",bat:92,custo:1150,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"Bateria 92%",avail:true},
  {id:5,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13",cap:"128GB",cor:"Preto",orig:"\u2014",bat:86,custo:1750,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:6,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13",cap:"128GB",cor:"Rosa",orig:"\u2014",bat:85,custo:1750,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:7,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13",cap:"128GB",cor:"Branco",orig:"\u2014",bat:100,custo:1750,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"Bateria 100%",avail:true},
  {id:8,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 14",cap:"128GB",cor:"Preto",orig:"\u2014",bat:84,custo:1850,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:9,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 14",cap:"256GB",cor:"Preto",orig:"\u2014",bat:88,custo:2050,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:10,forn:"D\u00E9cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 16 Pro Max",cap:"256GB",cor:"Desert",orig:"\u2014",bat:92,custo:5050,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:11,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 15",cap:"128GB",cor:"Rosa",orig:"Nacional",bat:100,custo:3850,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:12,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 15",cap:"128GB",cor:"Preto",orig:"ANATEL",bat:100,custo:3950,margin:20,cpo:"N\u00E3o",anatel:"Sim",img:"",obs:"ANATEL",avail:true},
  {id:13,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 15 Pro",cap:"128GB",cor:"Azul",orig:"CPO",bat:100,custo:4600,margin:20,cpo:"Sim",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:14,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16",cap:"128GB",cor:"Rosa",orig:"Nacional",bat:100,custo:4450,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:15,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16",cap:"128GB",cor:"Preto",orig:"Nacional",bat:100,custo:4450,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:16,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16 Pro",cap:"256GB",cor:"Desert",orig:"CPO",bat:100,custo:6000,margin:20,cpo:"Sim",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:17,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16 Pro Max",cap:"256GB",cor:"Natural",orig:"CPO",bat:100,custo:6500,margin:20,cpo:"Sim",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:18,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 17",cap:"256GB",cor:"Lavanda",orig:"Nacional",bat:100,custo:5200,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:19,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro",cap:"256GB",cor:"Laranja",orig:"Nacional",bat:100,custo:7500,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:20,forn:"D\u00E9cio",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro Max",cap:"256GB",cor:"Azul",orig:"Nacional",bat:100,custo:8000,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:21,forn:"Gugu Cell",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12",cap:"128GB",cor:"\u2014",orig:"\u2014",bat:null,custo:1550,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"Grade A \u2014 Consultar bateria",avail:true},
  {id:22,forn:"Gugu Cell",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13 Pro",cap:"128GB",cor:"\u2014",orig:"\u2014",bat:null,custo:2250,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"Grade A",avail:true},
  {id:23,forn:"Gugu Cell",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 15 Pro Max",cap:"256GB",cor:"\u2014",orig:"\u2014",bat:null,custo:3950,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"Grade A",avail:true},
  {id:24,forn:"Gugu Cell",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro",cap:"256GB",cor:"Branco",orig:"Americano",bat:100,custo:7400,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"Americano \u2014 Garantia Apple",avail:true},
  {id:25,forn:"Gugu Cell",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro Max",cap:"256GB",cor:"Laranja",orig:"Americano",bat:100,custo:7800,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"Americano \u2014 Garantia Apple",avail:true},
  {id:26,forn:"D\u00E9cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi A5",cap:"3/64GB",cor:"Preto",orig:"Nacional",bat:100,custo:550,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:27,forn:"D\u00E9cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi A5",cap:"4/128GB",cor:"Verde",orig:"Nacional",bat:100,custo:650,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:28,forn:"D\u00E9cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi 15C",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:890,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:29,forn:"D\u00E9cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 14 5G",cap:"8/256GB",cor:"Verde",orig:"Nacional",bat:100,custo:1390,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:30,forn:"D\u00E9cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 15 5G",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:1590,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:31,forn:"D\u00E9cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 15 Pro 5G",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:1990,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:32,forn:"D\u00E9cio",marca:"POCO",cond:"Novo",modelo:"POCO M7 Pro 5G",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:1590,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
  {id:33,forn:"Gugu Cell",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 15 Pro",cap:"8/256GB",cor:"Preto/Azul",orig:"Nacional",bat:100,custo:1750,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"V\u00E1rias cores",avail:true},
  {id:34,forn:"Gugu Cell",marca:"POCO",cond:"Novo",modelo:"POCO X7 Pro",cap:"12/512GB",cor:"Preto/Amarelo/Verde",orig:"Nacional",bat:100,custo:2690,margin:20,cpo:"N\u00E3o",anatel:"N\u00E3o",img:"",obs:"",avail:true},
];

let nxtId = Math.max(...P.map(x=>x.id))+1;

function toggleMobileMenu(){
  const menu=document.getElementById('mobile-menu');
  const btn=document.getElementById('hamburger-btn');
  menu.classList.toggle('open');
  btn.classList.toggle('open');
  document.body.style.overflow=menu.classList.contains('open')?'hidden':'';
}
function closeMobileMenu(){
  document.getElementById('mobile-menu').classList.remove('open');
  document.getElementById('hamburger-btn').classList.remove('open');
  document.body.style.overflow='';
}
function mobileNav(page){
  closeMobileMenu();
  showPage(page);
}
function saveP(){
  localStorage.setItem('mimo_v2',JSON.stringify(P));
  fetch('/api/produtos', {
    method: 'POST',
    headers: {'Content-Type':'application/json'},
    body: JSON.stringify({produtos: P})
  }).catch(e => console.log('Banco offline, salvando local:', e));
}

// \u2550\u2550 CART \u2550\u2550
let CART = JSON.parse(localStorage.getItem('mimo_cart')||'[]');
function saveCart(){localStorage.setItem('mimo_cart',JSON.stringify(CART))}
function cartCount(){return CART.reduce((s,x)=>s+x.qty,0)}
function cartTotal(){return CART.reduce((s,x)=>s+(venda(x.p)*x.qty),0)}

function updateCartBadge(){
  const n=cartCount();
  const badge=document.getElementById('cart-badge');
  if(badge){badge.textContent=n;badge.classList.toggle('show',n>0);}
}

function addToCart(id){
  const p=P.find(x=>x.id===id); if(!p) return;
  const ex=CART.find(x=>x.p.id===id);
  if(ex) ex.qty++;
  else CART.push({p,qty:1});
  saveCart(); updateCartBadge();
  const btn=document.getElementById('add-cart-btn-'+id);
  if(btn){btn.textContent='\u2705 Adicionado!';btn.classList.add('added');setTimeout(()=>{btn.textContent='\uD83D\uDED2 Adicionar ao Carrinho';btn.classList.remove('added');},1500);}
  showCartToast(p.modelo);
}

function showCartToast(nome){
  let t=document.getElementById('cart-toast');
  if(!t){t=document.createElement('div');t.id='cart-toast';
    t.style.cssText='position:fixed;bottom:100px;left:50%;transform:translateX(-50%);background:#1a0a12;color:#fff;padding:10px 20px;border-radius:30px;font-size:13px;font-weight:700;z-index:500;opacity:0;transition:.3s;pointer-events:none;white-space:nowrap';
    document.body.appendChild(t);}
  t.textContent='\uD83D\uDED2 '+nome+' adicionado!';
  t.style.opacity='1';
  setTimeout(()=>{t.style.opacity='0';},2000);
}

function removeFromCart(id){
  CART=CART.filter(x=>x.p.id!==id);
  saveCart(); updateCartBadge(); renderCart();
}

function changeQty(id,delta){
  const item=CART.find(x=>x.p.id===id);
  if(!item) return;
  item.qty=Math.max(1,item.qty+delta);
  saveCart(); updateCartBadge(); renderCart();
}

function renderCart(){
  const wrap=document.getElementById('cart-items');
  const summary=document.getElementById('cart-summary');
  const warn=document.getElementById('cart-semi-warn');
  if(!wrap) return;
  if(CART.length===0){
    wrap.innerHTML=`<div class="cart-empty"><div class="cart-empty-icon">\uD83D\uDED2</div><div style="font-size:20px;font-weight:800;margin-bottom:8px">Seu carrinho est\u00E1 vazio</div><div style="font-size:14px;color:var(--gray)">Adicione produtos para continuar</div><button onclick="showPage('home')" style="margin-top:20px;background:var(--pink);color:#fff;border:none;padding:12px 28px;border-radius:30px;font-weight:800;font-size:15px;cursor:pointer;font-family:'Nunito',sans-serif">\uD83D\uDECD\uFE0F Explorar produtos</button></div>`;
    if(summary) summary.style.display='none';
    if(warn) warn.classList.remove('show');
    return;
  }
  const hasSemi=CART.some(x=>x.p.cond==='Semi-novo');
  if(warn) warn.classList.toggle('show',hasSemi);
  wrap.innerHTML=CART.map(item=>{
    const p=item.p; const v=venda(p);
    const imgHTML=p.img?`<img src="${p.img}" style="width:64px;height:64px;object-fit:contain;border-radius:10px" alt="${p.modelo}">`:`<div class="cart-item-img">${p.marca==='Apple'?'\uD83D\uDCF1':p.marca==='Acess\u00F3rio'?'\uD83C\uDFA7':'\uD83E\uDD16'}</div>`;
    return `<div class="cart-item">
      ${imgHTML}
      <div class="cart-item-info">
        <div class="cart-item-name">${p.modelo}</div>
        <div class="cart-item-sub">${p.cap} \u2022 ${p.cor}${p.obs?' \u2022 '+p.obs:''}</div>
        ${p.cond==='Semi-novo'?'<span class="cart-item-semi">\uD83D\uDCF1 Semi-novo \u2014 verificar disponibilidade</span>':''}
        <div class="cart-item-price">${brl(v*item.qty)}</div>
      </div>
      <div class="cart-qty">
        <button class="cart-qty-btn" onclick="changeQty(${p.id},-1)">\u2212</button>
        <span class="cart-qty-num">${item.qty}</span>
        <button class="cart-qty-btn" onclick="changeQty(${p.id},+1)">+</button>
      </div>
      <button class="cart-remove" onclick="removeFromCart(${p.id})" title="Remover">\uD83D\uDDD1\uFE0F</button>
    </div>`;
  }).join('');
  if(summary){
    summary.style.display='block';
    document.getElementById('cart-total').textContent=brl(cartTotal());
  }
}

function finishCart(){
  if(CART.length===0){alert('Seu carrinho est\u00E1 vazio!');return;}
  const itens=CART.map(x=>`\u25AA ${x.p.modelo} ${x.p.cap} ${x.p.cor} (x${x.qty}) \u2014 ${brl(venda(x.p)*x.qty)}`).join('%0A');
  const total=brl(cartTotal());
  const semi=CART.some(x=>x.p.cond==='Semi-novo');
  const aviso=semi?'%0A%0A\u26A0 Itens seminovos sujeitos \u00E0 confirma\u00E7\u00E3o de disponibilidade.':'';
  const msg=`Ol\u00E1! Gostaria de fazer um pedido:%0A%0A\uD83D\uDED2 *MEU PEDIDO:*%0A${itens}%0A${'\u2500'.repeat(20)}%0A\uD83D\uDCB0 *TOTAL: ${total}*${aviso}%0A%0AAguardo confirma\u00E7\u00E3o!`;
  window.open(`https://wa.me/5565996480119?text=${msg}`,'_blank');
  CART=[]; saveCart(); updateCartBadge();
  showPage('home');
}
function venda(p){return p.vendaManual&&p.vendaManual>0?p.vendaManual:Math.round(p.custo*(1+p.margin/100))}
function brl(n){return 'R$ '+n.toLocaleString('pt-BR')+',00'}
function batCls(b){if(!b)return'';return b>=90?'bat-green':b>=80?'bat-yellow':'bat-red'}

// \u2550\u2550 PAGES \u2550\u2550
let curPage='home', iFilter='Todos', isAdmin=false;
function showPage(p){
  ['home','iphone','xiaomi','acessorios','carrinho','quem','contato'].forEach(x=>{
    document.getElementById('page-'+x).style.display=x===p?'block':'none';
    const n=document.getElementById('nav-'+x);
    if(n){n.classList.toggle('active',x===p)}
  });
  curPage=p;
  document.getElementById('site-footer').style.display='';
  document.getElementById('public-area').style.display='';
  document.getElementById('admin-panel').classList.remove('open');
  window.scrollTo(0,0);
  if(p==='home') renderHome();
  updateCartBadge();
  if(p==='iphone') renderIphone();
  if(p==='xiaomi') renderXiaomi();
  if(p==='acessorios') renderAcessorios();
  if(p==='carrinho') renderCart();
}

// \u2550\u2550 PRODUCT IMAGE HELPER \u2550\u2550
let iPhone_BANNER = "IMG_REMOVIDA";
let XIAOMI_BANNER = "IMG_REMOVIDA";

function getImg(p){
  if(p.img && p.img.length > 10){
    return `<img class="prod-img" src="${p.img}" alt="${p.modelo}" style="max-height:140px;object-fit:contain" onerror="this.style.display='none'">`;
  }
  if(p.marca==='Apple'){
    return `<img class="prod-img" src="${iPhone_BANNER}" alt="${p.modelo}" style="max-height:110px;opacity:.85">`;
  }
  if(p.marca==='Acess\u00F3rio') return `<div class="prod-img" style="display:flex;align-items:center;justify-content:center;height:110px;font-size:48px">\uD83C\uDFA7</div>`;
  return `<img class="prod-img" src="${XIAOMI_BANNER}" alt="${p.modelo}" style="max-height:110px;opacity:.85">`;
}

function getModalImg(p){
  const src = p.imgSpecs || p.img;
  if(src && src.length > 10){
    return `<img class="modal-img" src="${src}" alt="${p.modelo}" style="max-height:220px;object-fit:contain">`;
  }
  if(p.marca==='Apple') return `<img class="modal-img" src="${iPhone_BANNER}" alt="${p.modelo}" style="opacity:.85">`;
  if(p.marca==='Acess\u00F3rio') return `<div class="modal-img" style="display:flex;align-items:center;justify-content:center;font-size:80px;background:var(--pink-ultra);border-radius:16px">\uD83C\uDFA7</div>`;
  return `<img class="modal-img" src="${XIAOMI_BANNER}" alt="${p.modelo}" style="opacity:.85">`;
}

// \u2550\u2550 CARD HTML \u2550\u2550
function cardHTML(p, idx){
  const v=venda(p);
  const badges=[];
  if(p.cond==='Novo') badges.push('<span class="badge-new">\u2728 NOVO</span>');
  else if(p.cond==='Semi-novo') badges.push('<span class="badge-used">\uD83D\uDCF1 SEMI-NOVO</span>');
  if(p.cpo==='Sim') badges.push('<span class="badge-cpo">CPO</span>');
  if(p.anatel==='Sim') badges.push('<span class="badge-anatel">\uD83C\uDDE7\uD83C\uDDF7 ANATEL</span>');
  // MOD 3: mostrar bateria para semi-novos - apenas emoji + %
  const batHTML = p.bat && (p.cond==='Semi-novo' || p.bat<100) ? `
    <div class="prod-bat" style="font-size:13px;margin-top:6px;font-weight:700;color:var(--gray)">\uD83D\uDD0B ${p.bat}%</div>` : '';
  return `<div class="prod-card" onclick="openModal(${p.id})" style="animation-delay:${idx*0.04}s">
    <div class="prod-badge">${badges.join('')}</div>
    <div class="prod-img-wrap">${getImg(p)}</div>
    <div class="prod-body">
      <div class="prod-brand">${p.marca}</div>
      <div class="prod-name">${p.modelo}</div>
      <div class="prod-specs">
        ${p.cap&&p.cap!=='\u2014'?`<span class="spec">${p.cap}</span>`:''}
        ${p.cor&&p.cor!=='\u2014'?`<span class="spec gray">${p.cor}</span>`:''}
        ${p.orig&&p.orig!=='\u2014'?`<span class="spec gray">${p.orig}</span>`:''}
      </div>
      ${batHTML}
      ${p.obs?`<div style="font-size:11px;color:var(--pink);margin-top:6px;font-weight:700">${p.obs}</div>`:''}
    </div>
    <div class="prod-price-row">
      <div><div style="font-size:10px;color:var(--gray);text-transform:uppercase;letter-spacing:.5px;font-weight:700">Pre\u00E7o</div>
        <div class="prod-price">${brl(v)}</div>
      </div>
      <button class="prod-buy" onclick="event.stopPropagation();window.open('https://wa.me/5565996480119?text=Ol\u00E1!%20Tenho%20interesse%20no%20'+encodeURIComponent('${p.modelo} ${p.cap} ${p.cor}'),'_blank')">\uD83D\uDCAC Comprar</button>
    </div>
  </div>`;
}

function goFilter(cond){
  showPage('iphone');
  ifFilter = cond;
  document.querySelectorAll('#iphone-filters .filter-pill').forEach(b=>{
    b.classList.remove('on');
    if(b.textContent.includes('Semi') && cond==='Semi-novo') b.classList.add('on');
    if(b.textContent.includes('Novos') && cond==='Novo') b.classList.add('on');
    if(b.textContent.includes('Todos') && cond==='Todos') b.classList.add('on');
  });
  const bannerImg = document.getElementById('iphone-banner-img');
  if(bannerImg){
    if(cond==='Novo') bannerImg.src = BANNER_NOVOS_CONTRA;
    else bannerImg.src = BANNER_SEMI_CONTRA;
  }
  renderIphone();
}

function renderAll(){
  renderHome();
  renderIphone();
  renderXiaomi();
  renderAcessorios();
  if(document.getElementById('admin-tbody')) renderAdminTbl();
  if(document.getElementById('stats-boxes')) renderStats();
}

function renderHome(){
  const list = P.filter(x=>x.avail).sort(()=>Math.random()-.5).slice(0,8);
  document.getElementById('home-grid').innerHTML = list.map((p,i)=>cardHTML(p,i)).join('');
  const xb = document.getElementById('banner-xiaomi-home');
  if(xb){
    const xSrc = document.querySelector('#page-xiaomi img');
    if(xSrc && xSrc.src) xb.src = xSrc.src;
    else xb.src = XIAOMI_BANNER;
  }
}

let ifFilter='Todos';
function renderIphone(){
  let list = P.filter(x=>x.avail&&x.marca==='Apple');
  if(ifFilter!=='Todos') list=list.filter(x=>x.cond===ifFilter);
  document.getElementById('iphone-count').textContent=list.length;
  document.getElementById('iphone-grid').innerHTML=list.map((p,i)=>cardHTML(p,i)).join('');
  document.getElementById('iphone-empty').style.display=list.length?'none':'block';
}
function setIFilter(v,el){
  ifFilter=v;
  document.querySelectorAll('#iphone-filters .filter-pill').forEach(b=>b.classList.remove('on'));
  el.classList.add('on');
  const bannerImg = document.getElementById('iphone-banner-img');
  if(bannerImg){
    if(v==='Novo') bannerImg.src = BANNER_NOVOS_CONTRA;
    else bannerImg.src = BANNER_SEMI_CONTRA;
  }
  renderIphone();
}

let BANNER_SEMI_CONTRA = "IMG_REMOVIDA";
let BANNER_NOVOS_CONTRA = "IMG_REMOVIDA";

function renderXiaomi(){
  const list=P.filter(x=>x.avail&&x.marca!=='Apple'&&x.marca!=='Acess\u00F3rio');
  document.getElementById('xiaomi-count').textContent=list.length;
  document.getElementById('xiaomi-grid').innerHTML=list.map((p,i)=>cardHTML(p,i)).join('');
}

function renderAcessorios(){
  let list = P.filter(x=>x.avail && x.marca==='Acess\u00F3rio');
  document.getElementById('acess-grid').innerHTML = list.length
    ? list.map((p,i)=>cardHTML(p,i)).join('')
    : '<div style="grid-column:1/-1;text-align:center;padding:60px 20px;color:var(--gray)"><div style="font-size:48px;margin-bottom:12px">\uD83C\uDFA7</div><div style="font-size:18px;font-weight:700">Nenhum acess\u00F3rio cadastrado</div><div style="font-size:14px;margin-top:8px">Adicione acess\u00F3rios pelo painel admin</div></div>';
}

// \u2550\u2550 MODAL \u2550\u2550
function openModal(id){
  const p=P.find(x=>x.id===id); if(!p) return;
  const v=venda(p);
  const tags=[];
  if(p.cond==='Novo') tags.push('<span class="badge-new">\u2728 NOVO</span>');
  else if(p.cond==='Semi-novo') tags.push('<span class="badge-used">\uD83D\uDCF1 SEMI-NOVO</span>');
  if(p.cpo==='Sim') tags.push('<span class="badge-cpo">CPO</span>');
  if(p.anatel==='Sim') tags.push('<span class="badge-anatel">\uD83C\uDDE7\uD83C\uDDF7 ANATEL</span>');
  if(p.orig==='Americano') tags.push('<span style="background:#fff3e0;color:#e65100;font-size:10px;font-weight:800;padding:3px 10px;border-radius:20px">\uD83C\uDDFA\uD83C\uDDF8 AMERICANO</span>');
  const batHTML = p.bat&&(p.cond==='Semi-novo'||p.bat<100)?`
    <div class="modal-spec-item"><div class="modal-spec-label">Bateria</div>
      <div class="modal-spec-val ${batCls(p.bat)}">${p.bat}%
        <div class="bat-bar" style="margin-top:6px"><div class="bat-fill ${batCls(p.bat)}" style="width:${p.bat}%"></div></div>
      </div>
    </div>` : '';
  document.getElementById('modal-box').innerHTML=`
    <div class="modal-img-wrap">
      <button class="modal-close" onclick="closeModal()">\u2715</button>
      ${getModalImg(p)}
    </div>
    <div class="modal-body">
      <div class="modal-brand">${p.marca}</div>
      <div class="modal-name">${p.modelo}</div>
      <div class="modal-tags">${tags.join('')}</div>
      <div class="modal-specs-grid">
        ${p.cap&&p.cap!=='\u2014'?`<div class="modal-spec-item"><div class="modal-spec-label">Capacidade</div><div class="modal-spec-val">${p.cap}</div></div>`:''}
        ${p.cor&&p.cor!=='\u2014'?`<div class="modal-spec-item"><div class="modal-spec-label">Cor</div><div class="modal-spec-val">${p.cor}</div></div>`:''}
        ${batHTML}
        ${p.obs?`<div class="modal-spec-item" style="grid-column:1/-1"><div class="modal-spec-label">Observa\u00E7\u00E3o</div><div class="modal-spec-val" style="color:var(--pink);font-size:13px">${p.obs}</div></div>`:''}
        ${p.desc?`<div class="modal-spec-item" style="grid-column:1/-1"><div class="modal-spec-label">Descri\u00E7\u00E3o</div><div class="modal-spec-val" style="font-size:13px;font-weight:500;color:var(--dark);white-space:pre-wrap;line-height:1.6">${p.desc}</div></div>`:''}
      </div>
      <div class="modal-price-box">
        <div class="modal-price-label">Pre\u00E7o de Venda</div>
        <div class="modal-price-val">${brl(v)}</div>
        <div class="modal-price-note" style="font-size:13px;line-height:1.6">
          \u00E0 vista \u2022 sujeito \u00E0 disponibilidade<br>
          <span style="font-weight:800;color:#fff;background:rgba(255,255,255,.18);padding:3px 10px;border-radius:20px;display:inline-block;margin-top:2px">\uD83D\uDCF2 Parcelado em at\u00E9 18\u00D7 + taxa da m\u00E1quina</span>
        </div>
      </div>
      <button id="add-cart-btn-${p.id}" class="modal-add-cart" onclick="addToCart(${p.id})">
        \uD83D\uDED2 Adicionar ao Carrinho
      </button>
      <div class="modal-ctas">
        <a class="modal-cta-whats" href="https://wa.me/5565996480119?text=Ol\u00E1!%20Tenho%20interesse%20no%20${encodeURIComponent(p.modelo+' '+p.cap+' '+p.cor)}" target="_blank">
          \uD83D\uDCAC Comprar via WhatsApp
        </a>
        <a class="modal-cta-call" href="tel:5565996480119">\uD83D\uDCDE</a>
      </div>
    </div>`;
  document.getElementById('modal-ov').classList.add('open');
}
function closeModal(){document.getElementById('modal-ov').classList.remove('open')}

// \u2550\u2550 SEARCH \u2550\u2550
function toggleSearch(){
  const ov=document.getElementById('search-ov');
  ov.classList.toggle('open');
  if(ov.classList.contains('open')){setTimeout(()=>document.getElementById('search-big').focus(),100)}
}
function doSearch(q){
  const r=document.getElementById('search-results');
  if(!q.trim()){r.innerHTML='';return}
  const res=P.filter(x=>x.avail&&[x.modelo,x.cap,x.cor,x.cond,x.marca].join(' ').toLowerCase().includes(q.toLowerCase())).slice(0,8);
  r.innerHTML=res.length?res.map(p=>`
    <div class="search-result-item" onclick="closeSearch();openModal(${p.id})">
      <span class="search-result-icon">${p.marca==='Apple'?'\uD83D\uDCF1':'\uD83E\uDD16'}</span>
      <div><div class="search-result-name">${p.modelo} ${p.cap}</div>
      <div class="search-result-sub">${p.cor} \u2022 ${p.cond}</div></div>
      <span class="search-result-price">${brl(venda(p))}</span>
    </div>`).join('')
  :'<div style="padding:20px;text-align:center;color:var(--gray)">Nenhum produto encontrado \uD83D\uDE14</div>';
}
function closeSearch(){document.getElementById('search-ov').classList.remove('open')}
document.addEventListener('keydown',e=>{if(e.key==='Escape'){closeModal();closeSearch()}})

// \u2550\u2550 ADMIN \u2550\u2550
function openAdminLogin(){
  document.getElementById('admin-login-ov').classList.add('open');
}
function closeAdminLogin(){document.getElementById('admin-login-ov').classList.remove('open')}
function doLogin(){
  const u=document.getElementById('l-user').value;
  const pw=document.getElementById('l-pass').value;
  if(u==='admin'&&pw==='mimo2025'){
    isAdmin=true;
    closeAdminLogin();
    showAdmin();
  } else {
    document.getElementById('l-err').style.display='block';
  }
}
function doLogout(){
  isAdmin=false;
  document.getElementById('admin-panel').classList.remove('open');
  document.getElementById('public-area').style.display='';
  document.getElementById('site-footer').style.display='';
  showPage('home');
}
function showAdmin(){
  document.getElementById('public-area').style.display='none';
  document.getElementById('site-footer').style.display='none';
  document.getElementById('admin-panel').classList.add('open');
  renderAdminTbl();
  renderStats();
}
function aTab(t,el){
  ['consulta','add','import','config','stats'].forEach(x=>{
    const el2=document.getElementById('atab-'+x);
    if(el2) el2.style.display=x===t?'block':'none';
  });
  document.querySelectorAll('.admin-tab-btn').forEach(b=>b.classList.remove('on'));
  el.classList.add('on');
}

// \u2550\u2550 BANNER SWAP \u2550\u2550
function swapBanner(input, key, liveId){
  const file=input.files[0]; if(!file) return;
  const reader=new FileReader();
  reader.onload=e=>{
    const data=e.target.result;
    document.getElementById('prev-'+key).src=data;
    if(liveId){
      const liveEl=document.getElementById(liveId);
      if(liveEl) liveEl.src=data;
    }
    if(key==='semi-capa'){ BANNER_SEMI_CAPA=data; }
    if(key==='semi-contra'){ BANNER_SEMI_CONTRA=data;
      const bi=document.getElementById('iphone-banner-img');
      if(bi && ifFilter!=='Novo') bi.src=data; }
    if(key==='novos-capa'){ BANNER_NOVOS_CAPA=data; }
    if(key==='novos-contra'){ BANNER_NOVOS_CONTRA=data;
      const bi=document.getElementById('iphone-banner-img');
      if(bi && ifFilter==='Novo') bi.src=data; }
    if(key==='xiaomi-banner'){
      const xb=document.getElementById('xiaomi-banner-img');
      if(xb) xb.src=data;
    }
    const banners=JSON.parse(localStorage.getItem('mimo_banners')||'{}');
    banners[key]=data;
    localStorage.setItem('mimo_banners',JSON.stringify(banners));
    alert('\u2705 Banner atualizado com sucesso!');
  };
  reader.readAsDataURL(file);
}

// \u2550\u2550 CONFIG \u2550\u2550
function saveConfig(){
  const cfg={
    whats:document.getElementById('cfg-whats')?.value||'5565996480119',
    tel:document.getElementById('cfg-tel')?.value||'65 99648-0119',
    insta:document.getElementById('cfg-insta')?.value||'mimostore.cba',
    local:document.getElementById('cfg-local')?.value||'Cuiab\u00E1 - MT',
  };
  localStorage.setItem('mimo_config',JSON.stringify(cfg));
}

function applyConfig(){
  saveConfig();
  alert('\u2705 Dados de contato salvos! Ser\u00E3o aplicados na pr\u00F3xima visita.');
}

function applyGlobalMargin(){
  const mi_novo   = parseInt(document.getElementById('cfg-margin-iphone-novo')?.value)||20;
  const mi_semi   = parseInt(document.getElementById('cfg-margin-iphone-semi')?.value)||20;
  const mx_novo   = parseInt(document.getElementById('cfg-margin-xmi-novo')?.value)||20;
  const skip      = document.getElementById('cfg-skip-custom')?.checked;
  let count=0;
  P.forEach(p=>{
    if(skip && p.customMargin) return;
    if(p.marca==='Apple'){
      p.margin = (p.cond==='Semi-novo') ? mi_semi : mi_novo;
    } else {
      p.margin = mx_novo;
    }
    count++;
  });
  saveP();renderAdminTbl();
  document.getElementById('margin-result').textContent=`\u2705 Margem atualizada em ${count} produto(s)! ${skip?'(personalizados mantidos)':''}`;
}

function renderAdminTbl(){
  const q=(document.getElementById('admin-q')?.value||'').toLowerCase();
  const rows=P.filter(p=>{
    if(!q)return true;
    return [p.modelo,p.cap,p.cor,p.cond,p.orig,p.marca,p.forn,p.obs].join(' ').toLowerCase().includes(q);
  });
  document.getElementById('admin-tbody').innerHTML=rows.map(p=>`
    <tr>
      <td>${p.id}</td>
      <td style="font-size:11px;color:var(--gray)">${p.forn}</td>
      <td>${p.marca}</td>
      <td><span style="font-size:11px;font-weight:700;padding:3px 8px;border-radius:6px;background:${p.cond==='Novo'?'#dcfce7':p.cond==='Semi-novo'?'#fff3e0':'#f3f4f6'};color:${p.cond==='Novo'?'#16a34a':p.cond==='Semi-novo'?'#b45309':'#666'}">${p.cond}</span></td>
      <td><strong>${p.modelo}</strong></td>
      <td>${p.cap}</td>
      <td>${p.cor}</td>
      <td>${p.orig}</td>
      <td class="${batCls(p.bat)}">${p.bat?p.bat+'%':'\u2014'}</td>
      <td class="tbl-custo">${brl(p.custo)}</td>
      <td>${p.margin}%</td>
      <td class="tbl-price">${brl(venda(p))}</td>
      <td><span class="tbl-avail ${p.avail?'yes':'no'}">${p.avail?'\u2705 Sim':'\u274C N\u00E3o'}</span></td>
      <td style="max-width:100px;overflow:hidden;text-overflow:ellipsis;font-size:11px;color:var(--gray)">${p.obs||'\u2014'}</td>
      <td><div class="tbl-actions">
        <button class="tbl-btn tbl-edit" onclick="editP(${p.id})">\u270F\uFE0F</button>
        <button class="tbl-btn tbl-toggle" onclick="toggleAvail(${p.id})">${p.avail?'\uD83D\uDC41\uFE0F':'\uD83D\uDE48'}</button>
        <button class="tbl-btn tbl-del" onclick="delP(${p.id})">\uD83D\uDDD1\uFE0F</button>
      </div></td>
    </tr>`).join('');
}

function editP(id){
  const p=P.find(x=>x.id===id); if(!p) return;
  document.getElementById('ep-title').textContent = p.modelo+' '+p.cap;
  document.getElementById('ep-custo').value = p.custo;
  document.getElementById('ep-margin').value = p.margin;
  document.getElementById('ep-obs').value = p.obs||'';
  document.getElementById('ep-avail').checked = p.avail;
  document.getElementById('ep-custom-margin').checked = p.customMargin||false;
  const prev = document.getElementById('ep-img-preview');
  if(p.img){ prev.src=p.img; prev.style.display='block'; }
  else { prev.style.display='none'; }
  document.getElementById('ep-id').value = id;
  document.getElementById('ep-venda-prev').textContent = brl(venda(p));
  document.getElementById('edit-prod-modal').style.display='flex';
}

function epCalcVenda(){
  const c=parseInt(document.getElementById('ep-custo').value)||0;
  const m=parseInt(document.getElementById('ep-margin').value)||20;
  document.getElementById('ep-venda-prev').textContent = brl(Math.round(c*(1+m/100)));
}

function epLoadImg(input){
  const file=input.files[0]; if(!file) return;
  const reader=new FileReader();
  reader.onload=e=>{
    const data=e.target.result;
    document.getElementById('ep-img-preview').src=data;
    document.getElementById('ep-img-preview').style.display='block';
    document.getElementById('ep-img-data').value=data;
  };
  reader.readAsDataURL(file);
}

function epRemoveImg(){
  document.getElementById('ep-img-preview').style.display='none';
  document.getElementById('ep-img-data').value='';
}

function epSave(){
  const id=parseInt(document.getElementById('ep-id').value);
  const p=P.find(x=>x.id===id); if(!p) return;
  const nc=document.getElementById('ep-custo').value;
  const nm=document.getElementById('ep-margin').value;
  const imgData=document.getElementById('ep-img-data').value;
  if(nc && !isNaN(nc)) p.custo=parseInt(nc);
  if(nm && !isNaN(nm)) p.margin=parseInt(nm);
  if(imgData) p.img=imgData;
  else if(document.getElementById('ep-img-preview').style.display==='none') p.img='';
  p.obs=document.getElementById('ep-obs').value;
  p.avail=document.getElementById('ep-avail').checked;
  p.customMargin=document.getElementById('ep-custom-margin').checked;
  saveP(); renderAdminTbl(); renderStats();
  document.getElementById('edit-prod-modal').style.display='none';
  document.getElementById('ep-img-data').value='';
}

function epClose(){
  document.getElementById('edit-prod-modal').style.display='none';
}

function toggleAvail(id){
  const p=P.find(x=>x.id===id); if(!p) return;
  p.avail=!p.avail;
  saveP(); renderAdminTbl();
}

function delP(id){
  if(!confirm('Remover este produto do cat\u00E1logo?')) return;
  P=P.filter(x=>x.id!==id);
  saveP(); renderAdminTbl(); renderStats();
}

function updPreview(){
  const c=parseInt(document.getElementById('f-custo')?.value)||0;
  const m=parseInt(document.getElementById('f-margin')?.value)||20;
  const manual=parseFloat(document.getElementById('f-venda-manual')?.value)||0;
  const v=manual>0?manual:Math.round(c*(1+m/100));
  const m2=document.getElementById('f-modelo')?.value||'';
  const prev=document.getElementById('price-prev');
  const nota=manual>0?'<div style="font-size:11px;color:var(--green);margin-top:2px">\u2705 Pre\u00E7o manual</div>':'';
  if(prev) prev.innerHTML=(c||manual)?`<div class="label">Pre\u00E7o de Venda</div><div class="value">${brl(v)}</div>${nota}<div style="font-size:12px;color:var(--gray);margin-top:4px">${m2}</div>`:`<div class="label">Pre\u00E7o de Venda</div><div class="value">\u2014</div>`;
}

function addProd(){
  const g=id=>document.getElementById(id)?.value?.trim()||'';
  const modelo=g('f-modelo'), custo=parseInt(g('f-custo'));
  if(!modelo||!custo){alert('Preencha pelo menos o Modelo e o Custo.');return}
  const vendaManual=parseFloat(g('f-venda-manual'))||0;
  const np={
    id:nxtId++,forn:g('f-forn'),marca:g('f-marca'),cond:g('f-cond'),
    modelo,cap:g('f-cap')||'\u2014',cor:g('f-cor')||'\u2014',orig:g('f-orig'),
    bat:parseInt(g('f-bat'))||null,custo,margin:parseInt(g('f-margin'))||20,
    vendaManual:vendaManual||null,img:g('f-img'),imgSpecs:g('f-img-specs'),
    obs:g('f-obs'),desc:g('f-desc'),avail:true
  };
  P.push(np);saveP();
  alert(`\u2705 "${modelo}" adicionado!\nPre\u00E7o de venda: ${brl(venda(np))}`);
  aTab('consulta',document.querySelectorAll('.admin-tab-btn')[0]);
  renderAdminTbl();renderStats();
  if(np.marca==='Acess\u00F3rio') renderAcessorios();
  else if(np.marca==='Apple') renderIphone();
  else renderXiaomi();
}

// \u2550\u2550 IMPORT CSV \u2550\u2550
function importFile(input){
  const file=input.files[0]; if(!file) return;
  const reader=new FileReader();
  reader.onload=e=>{
    const text=e.target.result;
    const lines=text.split('\n').filter(l=>l.trim()&&!l.startsWith('fornecedor'));
    let added=0, errors=0;
    lines.forEach(line=>{
      const cols=line.split('|').map(s=>s.trim());
      if(cols.length<9){errors++;return}
      const [forn,marca,cond,modelo,cap,cor,orig,bat,custo,margin,obs]=[...cols,'','',''];
      if(!modelo||!custo||isNaN(parseInt(custo))){errors++;return}
      P.push({
        id:nxtId++,forn,marca:marca||'Apple',cond:cond||'Novo',
        modelo,cap:cap||'\u2014',cor:cor||'\u2014',orig:orig||'Nacional',
        bat:parseInt(bat)||null,custo:parseInt(custo),
        margin:parseInt(margin)||20,cpo:'N\u00E3o',anatel:orig==='ANATEL'?'Sim':'N\u00E3o',
        img:'',imgSpecs:'',obs:obs||'',desc:'',avail:true
      });
      added++;
    });
    saveP();renderAdminTbl();renderStats();
    document.getElementById('import-result').innerHTML=
      `<div style="background:${added?'#dcfce7':'#fee2e2'};color:${added?'#16a34a':'#dc2626'};padding:14px;border-radius:10px;font-weight:700">
        ${added?'\u2705':'\u274C'} ${added} produto(s) importado(s)${errors?' \u2022 '+errors+' linha(s) com erro':''}</div>`;
  };
  reader.readAsText(file,'UTF-8');
}

function renderStats(){
  const sb=document.getElementById('stats-boxes'); if(!sb) return;
  const tot=P.length, avail=P.filter(x=>x.avail).length;
  const apple=P.filter(x=>x.marca==='Apple').length;
  const xmi=P.filter(x=>x.marca!=='Apple'&&x.marca!=='Acess\u00F3rio').length;
  const acess=P.filter(x=>x.marca==='Acess\u00F3rio').length;
  const novos=P.filter(x=>x.cond==='Novo').length;
  const semi=P.filter(x=>x.cond==='Semi-novo').length;
  sb.innerHTML=[
    ['\uD83D\uDCE6',tot,'Total cadastrado'],['\u2705',avail,'Dispon\u00EDveis'],
    ['\uD83C\uDF4E',apple,'iPhones'],['\uD83E\uDD16',xmi,'Androids'],
    ['\uD83C\uDFA7',acess,'Acess\u00F3rios'],['\u2728',novos,'Novos'],['\uD83D\uDCF1',semi,'Semi-novos'],
  ].map(([ic,v,l])=>`<div class="stat-box"><div class="stat-val">${ic} ${v}</div><div class="stat-lbl">${l}</div></div>`).join('');
}

// \u2550\u2550 IMAGE UPLOAD \u2550\u2550
function loadImgFile(input){
  const file=input.files[0]; if(!file) return;
  const reader=new FileReader();
  reader.onload=e=>{
    const data=e.target.result;
    document.getElementById('f-img').value=data;
    document.getElementById('f-img-name').textContent=file.name;
    document.getElementById('f-img-preview').style.display='block';
    document.getElementById('f-img-prev-img').src=data;
    updPreview();
  };
  reader.readAsDataURL(file);
}

// \u2550\u2550 INIT \u2550\u2550
window.addEventListener('DOMContentLoaded',()=>{
  showPage('home');
  carregarDoBanco();
  // Carregar banners salvos do localStorage
  const saved = JSON.parse(localStorage.getItem('mimo_banners')||'{}');
  if(saved['semi-contra']) BANNER_SEMI_CONTRA = saved['semi-contra'];
  if(saved['novos-contra']) BANNER_NOVOS_CONTRA = saved['novos-contra'];
  if(saved['xiaomi-banner']){ XIAOMI_BANNER = saved['xiaomi-banner']; const xb=document.getElementById('banner-xiaomi-home'); if(xb) xb.src=XIAOMI_BANNER; }
  if(saved['acess-banner']){ const ab=document.getElementById('banner-acess-home'); if(ab) ab.src=saved['acess-banner']; }
  if(saved['semi-capa']){ const img=document.getElementById('banner-semi'); if(img) img.src=saved['semi-capa']; }
  if(saved['novos-capa']){ const img=document.getElementById('banner-novos'); if(img) img.src=saved['novos-capa']; }
  // Preview admin
  Object.entries(saved).forEach(([k,v])=>{ const el=document.getElementById('prev-'+k); if(el) el.src=v; });
});
</script>
