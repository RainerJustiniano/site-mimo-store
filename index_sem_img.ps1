<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mimo Store â€” Celulares & AcessÃ³rios | CuiabÃ¡-MT</title>
<meta name="description" content="Mimo Store CuiabÃ¡: iPhones novos e seminovos, Xiaomi, Samsung, Motorola, acessÃ³rios e muito mais. Parcelamos em atÃ© 18x. WhatsApp: (65) 99648-0119">
<meta name="keywords" content="celular cuiabÃ¡, iphone cuiabÃ¡, xiaomi cuiabÃ¡, seminovo cuiabÃ¡, mimo store, loja de celular">
<meta property="og:title" content="Mimo Store â€” Celulares & AcessÃ³rios | CuiabÃ¡-MT">
<meta property="og:description" content="iPhones novos e seminovos, Xiaomi, Samsung e acessÃ³rios em CuiabÃ¡-MT. Parcelamos em atÃ© 18x!">
<meta property="og:type" content="website">
<meta property="og:url" content="https://mimostorecba.com.br">
<meta name="theme-color" content="#e91e8c">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,700;0,900;1,700&family=Nunito:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<style>
:root{
  --pink:#e91e8c;--pink-light:#f48dc7;--pink-pale:#fce4f0;--pink-ultra:#fff0f8;
  --dark:#1a0a12;--gray:#666;--gray-light:#f5f5f5;--white:#fff;
  --green:#25d366;--radius:16px;
}
*{margin:0;padding:0;box-sizing:border-box}
body{font-family:'Nunito',sans-serif;background:#fff;color:var(--dark);overflow-x:hidden}
::-webkit-scrollbar{width:5px}::-webkit-scrollbar-thumb{background:var(--pink-light);border-radius:3px}

.topbar{display:none}

/* â”€â”€â”€ HEADER â”€â”€â”€ */
header{background:#fff;border-bottom:2px solid var(--pink-pale);position:sticky;top:0;z-index:200;box-shadow:0 2px 12px rgba(233,30,140,.08)}
.header-inner{max-width:1280px;margin:0 auto;padding:12px 20px;display:flex;align-items:center;gap:16px;flex-wrap:wrap}
.logo-img{height:80px;width:80px;object-fit:contain;border-radius:50%}
.logo-text-wrap{flex:1}
.logo-name{font-family:'Playfair Display',serif;font-size:28px;color:var(--pink);font-weight:900;line-height:1}
.logo-sub{font-size:11px;color:var(--gray);letter-spacing:2px;text-transform:uppercase;margin-top:2px}
nav{display:flex;gap:4px;flex-wrap:wrap}
.nav-link{padding:8px 14px;border-radius:20px;font-size:13px;font-weight:700;cursor:pointer;border:none;background:transparent;color:var(--dark);transition:.2s;font-family:'Nunito',sans-serif}
.nav-link:hover,.nav-link.active{background:var(--pink-pale);color:var(--pink)}
.nav-whats{background:var(--green)!important;color:#fff!important;display:flex;align-items:center;gap:6px;padding:9px 18px;border-radius:20px}
.header-search{display:flex;align-items:center;background:var(--pink-ultra);border:2px solid var(--pink-pale);border-radius:30px;padding:8px 16px;gap:8px;flex:1;max-width:280px}
.header-search input{border:none;background:transparent;outline:none;font-size:14px;font-family:'Nunito',sans-serif;width:100%}

/* â”€â”€â”€ HERO BANNER â”€â”€â”€ */
.hero{position:relative;overflow:hidden;border-radius:0}
.hero-img{width:100%;object-fit:contain;display:block;max-height:600px}
.hero-overlay{display:none}
.hero-text h1{display:none}
.hero-text p{display:none}
.hero-btns{position:absolute;bottom:32px;left:50%;transform:translateX(-50%);display:flex;gap:12px;flex-wrap:wrap;justify-content:center;z-index:2}
.btn-primary{background:#fff;color:var(--pink);padding:12px 28px;border-radius:30px;font-weight:800;font-size:14px;text-decoration:none;border:none;cursor:pointer;font-family:'Nunito',sans-serif;transition:.2s;display:flex;align-items:center;gap:6px}
.btn-primary:hover{background:var(--pink-pale);transform:translateY(-2px);box-shadow:0 8px 20px rgba(233,30,140,.3)}
.btn-outline{background:transparent;border:2px solid #fff;color:#fff;padding:12px 24px;border-radius:30px;font-weight:700;font-size:14px;text-decoration:none;cursor:pointer;font-family:'Nunito',sans-serif;transition:.2s}
.btn-outline:hover{background:rgba(255,255,255,.15)}

/* â”€â”€â”€ TRUST BAR â”€â”€â”€ */
.trust-bar{background:var(--pink-ultra);border-top:1px solid var(--pink-pale);border-bottom:1px solid var(--pink-pale);padding:16px 0}
.trust-inner{max-width:1280px;margin:0 auto;padding:0 20px;display:flex;justify-content:center;gap:32px;flex-wrap:wrap}
.trust-item{display:flex;align-items:center;gap:8px;font-size:13px;font-weight:700;color:var(--dark)}
.trust-item span.icon{font-size:20px}

/* â”€â”€â”€ CATEGORIES â”€â”€â”€ */
.cats-section{padding:32px 20px 0;max-width:1280px;margin:0 auto}
.cats-grid{display:flex;gap:12px;justify-content:center;flex-wrap:wrap;margin-top:16px}
.cat-card{background:var(--pink-ultra);border:2px solid var(--pink-pale);border-radius:14px;padding:16px 24px;text-align:center;cursor:pointer;transition:.2s;min-width:100px}
.cat-card:hover,.cat-card.active{background:var(--pink);border-color:var(--pink)}
.cat-card:hover *,.cat-card.active *{color:#fff}
.cat-icon{font-size:28px;display:block;margin-bottom:6px}
.cat-name{font-size:12px;font-weight:800;color:var(--dark);text-transform:uppercase;letter-spacing:.5px}

/* â”€â”€â”€ SECTION HEADER â”€â”€â”€ */
.section-hdr{display:flex;align-items:center;justify-content:space-between;margin-bottom:20px;flex-wrap:wrap;gap:8px}
.section-title{font-family:'Playfair Display',serif;font-size:26px;color:var(--dark);font-weight:900;display:flex;align-items:center;gap:10px}
.section-title .pill{background:var(--pink);color:#fff;font-size:12px;font-family:'Nunito',sans-serif;padding:4px 12px;border-radius:20px;font-weight:700}
.section-sub{color:var(--gray);font-size:13px;margin-top:4px}
.see-all{color:var(--pink);font-weight:700;font-size:13px;cursor:pointer;text-decoration:none;border:none;background:none;font-family:'Nunito',sans-serif}

/* â”€â”€â”€ BANNER CAROUSEL â”€â”€â”€ */
.banners-section{padding:24px 20px;max-width:1280px;margin:0 auto}
.banners-grid{display:grid;grid-template-columns:1fr 1fr;gap:16px}
.banner-card{border-radius:20px;overflow:hidden;cursor:pointer;transition:.2s;position:relative}
.banner-card:hover{transform:translateY(-3px);box-shadow:0 12px 40px rgba(233,30,140,.2)}
.banner-card img{width:100%;max-height:300px;object-fit:contain;display:block;background:var(--pink-ultra)}
.banner-card.full{grid-column:1/-1}
.banner-card.full img{max-height:320px;object-fit:contain;background:var(--pink-ultra)}

/* â”€â”€â”€ PRODUCTS SECTION â”€â”€â”€ */
.products-section{padding:24px 20px;max-width:1280px;margin:0 auto}

/* â”€â”€â”€ FILTER PILLS (iPhone only) â”€â”€â”€ */
.filter-bar{display:flex;gap:8px;flex-wrap:wrap;margin-bottom:20px;align-items:center}
.filter-pill{padding:7px 16px;border-radius:20px;font-size:13px;font-weight:700;cursor:pointer;border:2px solid var(--pink-pale);color:var(--gray);background:#fff;transition:.2s;font-family:'Nunito',sans-serif}
.filter-pill:hover,.filter-pill.on{background:var(--pink);border-color:var(--pink);color:#fff}

/* â”€â”€â”€ PRODUCT CARD â”€â”€â”€ */
.prod-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(240px,1fr));gap:20px}
.prod-card{background:#fff;border-radius:20px;overflow:hidden;box-shadow:0 2px 16px rgba(233,30,140,.08);border:1.5px solid var(--pink-pale);transition:.25s;cursor:pointer;position:relative}
.prod-card:hover{transform:translateY(-4px);box-shadow:0 12px 40px rgba(233,30,140,.18);border-color:var(--pink)}
.prod-badge{position:absolute;top:12px;left:12px;z-index:2;display:flex;flex-direction:column;gap:4px}
.badge-new{background:var(--pink);color:#fff;font-size:10px;font-weight:800;padding:3px 10px;border-radius:20px;letter-spacing:.5px}
.badge-used{background:#f59e0b;color:#fff;font-size:10px;font-weight:800;padding:3px 10px;border-radius:20px}
.badge-cpo{background:#7c3aed;color:#fff;font-size:10px;font-weight:800;padding:3px 10px;border-radius:20px}
.badge-anatel{background:#16a34a;color:#fff;font-size:10px;font-weight:800;padding:3px 10px;border-radius:20px}
.prod-img-wrap{background:var(--pink-ultra);padding:20px;text-align:center;min-height:180px;display:flex;align-items:center;justify-content:center;position:relative;overflow:hidden}
.prod-img-wrap::before{content:'';position:absolute;inset:0;background:radial-gradient(circle at 50% 80%,var(--pink-pale) 0%,transparent 70%)}
.prod-img{max-height:140px;max-width:100%;object-fit:contain;position:relative;z-index:1;transition:.3s}
.prod-card:hover .prod-img{transform:scale(1.05)}
.prod-img-placeholder{font-size:60px;position:relative;z-index:1}
.prod-body{padding:16px}
.prod-brand{font-size:11px;color:var(--pink);font-weight:800;letter-spacing:1px;text-transform:uppercase}
.prod-name{font-family:'Playfair Display',serif;font-size:17px;font-weight:700;color:var(--dark);margin-top:4px;line-height:1.2}
.prod-specs{display:flex;gap:6px;flex-wrap:wrap;margin-top:8px}
.spec{background:var(--pink-pale);color:var(--pink);font-size:11px;font-weight:700;padding:3px 9px;border-radius:8px}
.spec.gray{background:var(--gray-light);color:var(--gray)}
.prod-bat{display:flex;align-items:center;gap:6px;margin-top:8px;font-size:12px;color:var(--gray)}
.bat-bar{flex:1;height:5px;background:#eee;border-radius:3px;overflow:hidden}
.bat-fill{height:100%;border-radius:3px}
.bat-green{background:#16a34a}.bat-yellow{background:#f59e0b}.bat-red{background:#dc2626}
.prod-price-row{display:flex;align-items:center;justify-content:space-between;padding:12px 16px;border-top:1px solid var(--pink-pale);background:var(--pink-ultra)}
.prod-price{font-family:'Playfair Display',serif;font-size:22px;font-weight:900;color:var(--pink)}
.prod-price-small{font-size:11px;color:var(--gray);margin-top:1px}
.prod-buy{background:var(--pink);color:#fff;border:none;border-radius:10px;padding:8px 14px;font-size:12px;font-weight:800;cursor:pointer;font-family:'Nunito',sans-serif;transition:.2s;white-space:nowrap}
.prod-buy:hover{background:#c4158c;transform:scale(1.05)}

/* â”€â”€â”€ PRODUCT MODAL â”€â”€â”€ */
.modal-ov{position:fixed;inset:0;background:rgba(0,0,0,.5);z-index:500;display:none;align-items:center;justify-content:center;padding:16px;backdrop-filter:blur(4px)}
.modal-ov.open{display:flex}
.modal-box{background:#fff;border-radius:24px;width:100%;max-width:560px;max-height:92vh;overflow-y:auto;box-shadow:0 24px 80px rgba(233,30,140,.2)}
.modal-img-wrap{background:var(--pink-ultra);padding:32px;text-align:center;position:relative;border-radius:24px 24px 0 0}
.modal-img{max-height:200px;max-width:100%;object-fit:contain}
.modal-close{position:absolute;top:12px;right:12px;background:#fff;border:none;width:34px;height:34px;border-radius:50%;font-size:16px;cursor:pointer;box-shadow:0 2px 8px rgba(0,0,0,.1);display:flex;align-items:center;justify-content:center}
.modal-body{padding:24px}
.modal-brand{font-size:11px;color:var(--pink);font-weight:800;letter-spacing:1.5px;text-transform:uppercase}
.modal-name{font-family:'Playfair Display',serif;font-size:26px;font-weight:900;color:var(--dark);margin-top:4px}
.modal-tags{display:flex;gap:6px;flex-wrap:wrap;margin-top:10px}
.modal-specs-grid{display:grid;grid-template-columns:1fr 1fr;gap:10px;margin-top:16px}
.modal-spec-item{background:var(--pink-ultra);border-radius:12px;padding:12px}
.modal-spec-label{font-size:10px;color:var(--gray);font-weight:600;text-transform:uppercase;letter-spacing:.5px}
.modal-spec-val{font-size:15px;font-weight:800;color:var(--dark);margin-top:3px}
.modal-price-box{background:linear-gradient(135deg,var(--pink),#c4158c);border-radius:16px;padding:20px;text-align:center;margin-top:16px}
.modal-price-label{color:rgba(255,255,255,.8);font-size:12px;font-weight:600;letter-spacing:1px;text-transform:uppercase}
.modal-price-val{font-family:'Playfair Display',serif;font-size:38px;font-weight:900;color:#fff;margin-top:4px}
.modal-price-note{color:rgba(255,255,255,.7);font-size:11px;margin-top:4px}
.modal-ctas{display:flex;gap:10px;margin-top:16px}
.modal-cta-whats{flex:1;background:var(--green);color:#fff;border:none;border-radius:14px;padding:14px;font-size:14px;font-weight:800;cursor:pointer;font-family:'Nunito',sans-serif;display:flex;align-items:center;justify-content:center;gap:8px;text-decoration:none}
.modal-cta-call{flex:0;background:var(--pink-pale);color:var(--pink);border:none;border-radius:14px;padding:14px 18px;font-size:14px;font-weight:800;cursor:pointer;font-family:'Nunito',sans-serif;text-decoration:none;display:flex;align-items:center;justify-content:center}

/* â”€â”€â”€ QUEM SOMOS â”€â”€â”€ */
.quem-section{background:linear-gradient(135deg,var(--pink-ultra) 0%,#fff 100%);padding:48px 20px;border-top:2px solid var(--pink-pale);border-bottom:2px solid var(--pink-pale)}
.quem-inner{max-width:900px;margin:0 auto;text-align:center}
.quem-logo{width:120px;height:120px;object-fit:contain;margin:0 auto 20px}
.quem-inner h2{font-family:'Playfair Display',serif;font-size:32px;color:var(--pink);font-weight:900;margin-bottom:16px}
.quem-inner p{color:var(--gray);font-size:16px;line-height:1.8;max-width:700px;margin:0 auto}
.quem-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(180px,1fr));gap:16px;margin-top:32px}
.quem-item{background:#fff;border-radius:16px;padding:20px;text-align:center;border:1.5px solid var(--pink-pale);box-shadow:0 2px 12px rgba(233,30,140,.06)}
.quem-item .icon{font-size:32px;margin-bottom:8px;display:block}
.quem-item strong{font-size:13px;font-weight:800;color:var(--dark);display:block}
.quem-item span{font-size:12px;color:var(--gray)}

/* â”€â”€â”€ FOOTER â”€â”€â”€ */
footer{background:var(--dark);color:rgba(255,255,255,.6);padding:32px 20px}
.footer-inner{max-width:1280px;margin:0 auto;display:grid;grid-template-columns:auto 1fr auto;gap:32px;align-items:center;flex-wrap:wrap}
.footer-logo{filter:brightness(0) invert(1);height:60px;width:60px;object-fit:contain;opacity:.8}
.footer-links{display:flex;gap:16px;flex-wrap:wrap;justify-content:center}
.footer-links a{color:rgba(255,255,255,.5);text-decoration:none;font-size:13px;font-weight:600}
.footer-links a:hover{color:var(--pink-light)}
.footer-contact{text-align:right;font-size:13px}
.footer-contact a{color:var(--pink-light);text-decoration:none;display:block;margin-top:4px}
.footer-bottom{text-align:center;padding-top:20px;margin-top:20px;border-top:1px solid rgba(255,255,255,.1);font-size:12px}

/* â”€â”€â”€ SEARCH OVERLAY â”€â”€â”€ */
.search-ov{display:none;position:fixed;inset:0;background:rgba(0,0,0,.4);z-index:400;padding:80px 20px 20px;backdrop-filter:blur(4px)}
.search-ov.open{display:flex;flex-direction:column;align-items:center}
.search-box-big{background:#fff;border-radius:20px;width:100%;max-width:600px;overflow:hidden;box-shadow:0 20px 60px rgba(0,0,0,.2)}
.search-input-big{width:100%;padding:18px 24px;font-size:18px;border:none;outline:none;font-family:'Nunito',sans-serif;border-bottom:2px solid var(--pink-pale)}
.search-results{padding:12px;max-height:50vh;overflow-y:auto}
.search-result-item{padding:12px 14px;border-radius:10px;cursor:pointer;display:flex;align-items:center;gap:12px;transition:.15s}
.search-result-item:hover{background:var(--pink-pale)}
.search-result-icon{font-size:24px}
.search-result-name{font-weight:700;font-size:14px;color:var(--dark)}
.search-result-sub{font-size:12px;color:var(--gray)}
.search-result-price{font-weight:900;color:var(--pink);font-size:14px;margin-left:auto;white-space:nowrap}

/* â”€â”€â”€ ADMIN â”€â”€â”€ */
#admin-login-ov{display:none;position:fixed;inset:0;background:rgba(26,10,18,.95);z-index:600;align-items:center;justify-content:center}
#admin-login-ov.open{display:flex}
.login-card{background:#fff;border-radius:24px;padding:40px;width:100%;max-width:400px;box-shadow:0 24px 80px rgba(233,30,140,.2)}
.login-card .logo-img{height:80px;width:80px;object-fit:contain;margin:0 auto 20px;display:block}
.login-card h2{font-family:'Playfair Display',serif;color:var(--pink);text-align:center;font-size:24px;margin-bottom:24px}
.field{margin-bottom:14px}
.field label{display:block;font-size:12px;font-weight:700;color:var(--gray);text-transform:uppercase;letter-spacing:.5px;margin-bottom:6px}
.field input,.field select,.field textarea{width:100%;padding:11px 14px;border:2px solid var(--pink-pale);border-radius:10px;font-size:14px;font-family:'Nunito',sans-serif;outline:none;transition:.2s;color:var(--dark);background:#fff}
.field input:focus,.field select:focus{border-color:var(--pink)}
.btn-pink{width:100%;background:var(--pink);color:#fff;border:none;border-radius:12px;padding:14px;font-size:15px;font-weight:800;cursor:pointer;font-family:'Nunito',sans-serif;transition:.2s;margin-top:8px}
.btn-pink:hover{background:#c4158c}
.login-err{color:#dc2626;text-align:center;font-size:13px;margin-top:8px;display:none}
.login-back-btn{background:none;border:none;color:var(--gray);font-size:13px;cursor:pointer;display:block;text-align:center;margin-top:14px;width:100%;font-family:'Nunito',sans-serif}

#admin-panel{display:none}
#admin-panel.open{display:block}
.admin-top{background:linear-gradient(135deg,var(--dark),#3d0a26);padding:16px 20px;display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:12px}
.admin-top-title{color:var(--pink-light);font-family:'Playfair Display',serif;font-size:20px}
.admin-tabs-bar{display:flex;gap:8px;flex-wrap:wrap}
.admin-tab-btn{background:rgba(255,255,255,.1);border:1.5px solid rgba(255,255,255,.15);color:rgba(255,255,255,.6);padding:8px 16px;border-radius:10px;cursor:pointer;font-size:13px;font-weight:700;font-family:'Nunito',sans-serif;transition:.2s}
.admin-tab-btn.on{background:var(--pink);border-color:var(--pink);color:#fff}
.admin-logout-btn{background:rgba(255,255,255,.08);border:none;color:rgba(255,255,255,.4);padding:8px 14px;border-radius:8px;cursor:pointer;font-size:12px;font-family:'Nunito',sans-serif}
.admin-content{padding:24px;max-width:1280px;margin:0 auto}

/* admin table */
.admin-search-wrap{background:#fff;border-radius:14px;padding:16px;margin-bottom:16px;border:1.5px solid var(--pink-pale)}
.admin-search-wrap input{width:100%;padding:10px 14px;border:2px solid var(--pink-pale);border-radius:10px;font-size:14px;font-family:'Nunito',sans-serif;outline:none}
.admin-search-wrap input:focus{border-color:var(--pink)}
.tbl-wrap{overflow-x:auto;border-radius:14px;border:1.5px solid var(--pink-pale)}
.admin-tbl{width:100%;border-collapse:collapse;font-size:12px;background:#fff}
.admin-tbl th{background:var(--dark);color:var(--pink-light);padding:10px 12px;text-align:left;font-size:11px;white-space:nowrap}
.admin-tbl td{padding:9px 12px;border-bottom:1px solid var(--pink-pale);white-space:nowrap;color:var(--dark)}
.admin-tbl tr:hover td{background:var(--pink-ultra)}
.tbl-price{font-weight:700;color:var(--pink)}
.tbl-custo{color:var(--gray);font-size:11px}
.tbl-avail{font-weight:700;font-size:11px;padding:3px 8px;border-radius:6px}
.tbl-avail.yes{background:#dcfce7;color:#16a34a}
.tbl-avail.no{background:#fee2e2;color:#dc2626}
.tbl-actions{display:flex;gap:4px}
.tbl-btn{border:none;padding:5px 9px;border-radius:6px;cursor:pointer;font-size:11px;font-weight:700;font-family:'Nunito',sans-serif}
.tbl-edit{background:var(--pink-pale);color:var(--pink)}
.tbl-del{background:#fee2e2;color:#dc2626}
.tbl-toggle{background:#dcfce7;color:#16a34a}

/* admin form */
.form-card{background:#fff;border-radius:16px;padding:24px;border:1.5px solid var(--pink-pale);max-width:700px}
.form-card h3{font-family:'Playfair Display',serif;font-size:22px;color:var(--dark);margin-bottom:20px}
.form-row{display:grid;grid-template-columns:1fr 1fr;gap:14px}
.form-row.three{grid-template-columns:1fr 1fr 1fr}
.field.full{grid-column:1/-1}
.price-preview{background:linear-gradient(135deg,var(--pink-pale),#fce4f0);border-radius:12px;padding:16px;text-align:center;margin-top:12px}
.price-preview .label{font-size:11px;color:var(--gray);font-weight:700;text-transform:uppercase;letter-spacing:.5px}
.price-preview .value{font-family:'Playfair Display',serif;font-size:30px;font-weight:900;color:var(--pink)}
.btn-pink-sm{background:var(--pink);color:#fff;border:none;border-radius:10px;padding:12px 28px;font-size:14px;font-weight:800;cursor:pointer;font-family:'Nunito',sans-serif;margin-top:16px}
.stats-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(160px,1fr));gap:14px;margin-bottom:24px}
.stat-box{background:#fff;border-radius:14px;padding:18px;border:1.5px solid var(--pink-pale);text-align:center}
.stat-val{font-family:'Playfair Display',serif;font-size:36px;font-weight:900;color:var(--pink)}
.stat-lbl{font-size:12px;color:var(--gray);font-weight:600;margin-top:4px}

/* import area */
.import-area{background:#fff;border-radius:16px;padding:24px;border:2px dashed var(--pink-pale);text-align:center;cursor:pointer;transition:.2s;max-width:500px}
.import-area:hover{border-color:var(--pink);background:var(--pink-ultra)}
.import-area input[type=file]{display:none}
.import-icon{font-size:48px;margin-bottom:12px}
.import-area h4{font-size:16px;font-weight:800;color:var(--dark);margin-bottom:6px}
.import-area p{font-size:13px;color:var(--gray)}
.import-format{background:var(--pink-ultra);border-radius:10px;padding:14px;margin-top:16px;text-align:left;font-size:12px;color:var(--gray);line-height:1.8}
.import-format strong{color:var(--dark)}

/* â”€â”€â”€ RESPONSIVE â”€â”€â”€ */
@media(max-width:768px){
  .banners-grid{grid-template-columns:1fr}
  .banner-card.full img,.banner-card img{height:180px}
  .footer-inner{grid-template-columns:1fr;text-align:center}
  .footer-contact{text-align:center}
  .form-row,.form-row.three{grid-template-columns:1fr}
  .header-search{display:none}
  .hero-overlay{padding:24px}
  .modal-specs-grid{grid-template-columns:1fr}
}
@keyframes fadeUp{from{opacity:0;transform:translateY(16px)}to{opacity:1;transform:translateY(0)}}
.prod-card{animation:fadeUp .35s ease both}

/* â”€â”€â”€ CART ICON â”€â”€â”€ */
.cart-btn{position:relative;background:var(--pink);color:#fff;border:none;border-radius:50%;width:40px;height:40px;display:flex;align-items:center;justify-content:center;font-size:18px;cursor:pointer;transition:.2s;flex-shrink:0}
.cart-btn:hover{transform:scale(1.1)}
.cart-badge{position:absolute;top:-6px;right:-6px;background:#fff;color:var(--pink);border:2px solid var(--pink);border-radius:50%;width:20px;height:20px;font-size:10px;font-weight:900;display:flex;align-items:center;justify-content:center;display:none}
.cart-badge.show{display:flex}

/* â”€â”€â”€ CART PAGE â”€â”€â”€ */
.cart-empty{text-align:center;padding:80px 20px;color:var(--gray)}
.cart-empty-icon{font-size:64px;margin-bottom:16px}
.cart-item{display:flex;align-items:center;gap:14px;background:#fff;border:1.5px solid var(--pink-pale);border-radius:16px;padding:14px;margin-bottom:12px;transition:.2s}
.cart-item:hover{border-color:var(--pink);box-shadow:0 4px 20px rgba(233,30,140,.1)}
.cart-item-img{width:64px;height:64px;object-fit:contain;border-radius:10px;background:var(--pink-ultra);display:flex;align-items:center;justify-content:center;font-size:28px;flex-shrink:0}
.cart-item-info{flex:1;min-width:0}
.cart-item-name{font-weight:800;font-size:15px;color:var(--dark);white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.cart-item-sub{font-size:12px;color:var(--gray);margin-top:2px}
.cart-item-price{font-weight:900;color:var(--pink);font-size:16px;margin-top:4px}
.cart-item-semi{font-size:10px;color:#f57f17;font-weight:700;background:#fff8e1;padding:2px 8px;border-radius:10px;display:inline-block;margin-top:4px}
.cart-qty{display:flex;align-items:center;gap:8px;flex-shrink:0}
.cart-qty-btn{width:28px;height:28px;border-radius:50%;border:2px solid var(--pink-pale);background:#fff;color:var(--pink);font-size:16px;font-weight:900;cursor:pointer;display:flex;align-items:center;justify-content:center;transition:.2s}
.cart-qty-btn:hover{background:var(--pink);color:#fff;border-color:var(--pink)}
.cart-qty-num{font-weight:900;font-size:15px;min-width:20px;text-align:center}
.cart-remove{color:#ccc;background:none;border:none;font-size:18px;cursor:pointer;padding:4px;transition:.2s}
.cart-remove:hover{color:#e53935}
.cart-summary{background:linear-gradient(135deg,var(--pink),#c4158c);border-radius:20px;padding:20px;color:#fff;margin-top:24px}
.cart-total-label{font-size:12px;opacity:.8;text-transform:uppercase;letter-spacing:.5px;font-weight:700}
.cart-total-val{font-family:'Playfair Display',serif;font-size:36px;font-weight:900;margin:4px 0 16px}
.cart-actions{display:flex;gap:12px;flex-wrap:wrap}
.cart-btn-continue{background:rgba(255,255,255,.2);color:#fff;border:2px solid rgba(255,255,255,.4);padding:12px 20px;border-radius:30px;font-weight:800;font-size:14px;cursor:pointer;font-family:'Nunito',sans-serif;transition:.2s;flex:1;min-width:140px;text-align:center}
.cart-btn-continue:hover{background:rgba(255,255,255,.35)}
.cart-btn-finish{background:#fff;color:var(--pink);padding:12px 20px;border-radius:30px;font-weight:900;font-size:14px;cursor:pointer;border:none;font-family:'Nunito',sans-serif;transition:.2s;flex:1;min-width:140px;display:flex;align-items:center;justify-content:center;gap:8px}
.cart-btn-finish:hover{background:var(--pink-pale);transform:scale(1.02)}
.cart-avail-warn{background:#fff8e1;border:1.5px solid #ffd54f;border-radius:12px;padding:12px 16px;margin-top:16px;font-size:13px;color:#f57f17;font-weight:700;display:none}
.cart-avail-warn.show{display:block}

/* â”€â”€â”€ HAMBURGER â”€â”€â”€ */
.hamburger{display:none;flex-direction:column;gap:5px;cursor:pointer;background:none;border:none;padding:8px}
.hamburger span{display:block;width:24px;height:2px;background:var(--dark);border-radius:2px;transition:.3s}
.hamburger.open span:nth-child(1){transform:rotate(45deg) translate(5px,5px)}
.hamburger.open span:nth-child(2){opacity:0}
.hamburger.open span:nth-child(3){transform:rotate(-45deg) translate(5px,-5px)}
.mobile-menu{display:none;position:fixed;top:0;left:0;right:0;bottom:0;background:rgba(0,0,0,.5);z-index:200}
.mobile-menu.open{display:block}
.mobile-menu-panel{position:absolute;top:0;right:0;bottom:0;width:280px;background:#fff;box-shadow:-4px 0 30px rgba(0,0,0,.15);display:flex;flex-direction:column;padding:24px}
.mobile-menu-header{display:flex;align-items:center;justify-content:space-between;margin-bottom:24px;padding-bottom:16px;border-bottom:1px solid var(--pink-pale)}
.mobile-close{background:none;border:none;font-size:22px;cursor:pointer;color:var(--gray)}
.mobile-nav-link{display:flex;align-items:center;gap:12px;padding:14px 0;font-size:16px;font-weight:700;color:var(--dark);cursor:pointer;border:none;background:none;font-family:'Nunito',sans-serif;width:100%;text-align:left;border-bottom:1px solid var(--pink-ultra);transition:.2s}
.mobile-nav-link:hover{color:var(--pink);padding-left:4px}

/* â”€â”€â”€ FLOATING WA â”€â”€â”€ */
.wa-float{position:fixed;bottom:24px;right:24px;z-index:100;background:#25d366;color:#fff;width:56px;height:56px;border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:26px;box-shadow:0 4px 20px rgba(37,211,102,.4);text-decoration:none;transition:.2s;animation:pulse-wa 2s infinite}
.wa-float:hover{transform:scale(1.1);box-shadow:0 8px 30px rgba(37,211,102,.6)}
@keyframes pulse-wa{0%,100%{box-shadow:0 4px 20px rgba(37,211,102,.4)}50%{box-shadow:0 4px 30px rgba(37,211,102,.7)}}

/* â”€â”€â”€ ADD TO CART BTN in modal â”€â”€â”€ */
.modal-add-cart{width:100%;padding:14px;background:var(--pink-ultra);color:var(--pink);border:2px solid var(--pink);border-radius:12px;font-size:15px;font-weight:800;cursor:pointer;font-family:'Nunito',sans-serif;margin-bottom:10px;transition:.2s;display:flex;align-items:center;justify-content:center;gap:8px}
.modal-add-cart:hover{background:var(--pink);color:#fff}
.modal-add-cart.added{background:var(--pink);color:#fff}

@media(max-width:768px){
  .hamburger{display:flex}
  nav{display:none}
  .header-search{display:none}
  .wa-float{bottom:80px;right:16px;width:50px;height:50px;font-size:22px}
  .cart-item-name{font-size:14px}
  .cart-total-val{font-size:28px}
  .cart-actions{flex-direction:column}
}
</style>
</head>
<body>



<!-- HEADER -->
<header>
  <div class="header-inner">
    <img src="IMG_REMOVIDA" class="logo-img" alt="Mimo Store" onclick="showPage('home')" style="cursor:pointer">
    <div class="logo-text-wrap">
      <div class="logo-name" onclick="showPage('home')" style="cursor:pointer">Mimo Store</div>
      <div class="logo-sub">AcessÃ³rios com carinho, para vocÃª ðŸ’—</div>
    </div>
    <nav>
      <button class="nav-link active" id="nav-home" onclick="showPage('home')">InÃ­cio</button>
      <button class="nav-link" id="nav-iphone" onclick="showPage('iphone')">ðŸ“± iPhone</button>
      <button class="nav-link" id="nav-xiaomi" onclick="showPage('xiaomi')">ðŸ¤– Xiaomi</button>
      <button class="nav-link" id="nav-acessorios" onclick="showPage('acessorios')">ðŸŽ§ AcessÃ³rios</button>
      <button class="nav-link" id="nav-quem" onclick="showPage('quem')">Quem somos</button>
      <button class="nav-link" id="nav-carrinho" onclick="showPage('carrinho')">ðŸ›’ Carrinho</button>
      <button class="nav-link" id="nav-contato" onclick="showPage('contato')">Contato</button>
      <a class="nav-link nav-whats" href="https://wa.me/5565996480119" target="_blank">
        <svg width="16" height="16" viewBox="0 0 24 24" fill="white"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z"/><path d="M12 0C5.373 0 0 5.373 0 12c0 2.136.563 4.14 1.542 5.874L0 24l6.278-1.645A11.94 11.94 0 0012 24c6.627 0 12-5.373 12-12S18.627 0 12 0zm0 21.818a9.818 9.818 0 01-5.006-1.376l-.36-.214-3.726.977.997-3.634-.235-.374A9.775 9.775 0 012.182 12C2.182 6.58 6.58 2.182 12 2.182S21.818 6.58 21.818 12 17.42 21.818 12 21.818z"/></svg>
        WhatsApp
      </a>
      <button class="nav-link" onclick="toggleSearch()">ðŸ”</button>
      <button class="nav-link" onclick="openAdminLogin()">âš™ï¸</button>
    </nav>
  </div>
</header>

<!-- SEARCH OVERLAY -->
<div class="search-ov" id="search-ov" onclick="if(event.target===this)toggleSearch()">
  <div class="search-box-big">
    <input class="search-input-big" id="search-big" placeholder="ðŸ” Buscar iPhone 15 Pro, Redmi Note 15..." oninput="doSearch(this.value)" autofocus>
    <div class="search-results" id="search-results"></div>
  </div>
</div>

<!-- â•â•â• PUBLIC PAGES â•â•â• -->
<div id="public-area">

<!-- HOME PAGE -->
<div id="page-home">
  <!-- HERO -->
  <div class="hero">
    <img src="IMG_REMOVIDA" class="hero-img" alt="Mimo Store Banner">
    <div class="hero-overlay">
      <div class="hero-text">
        <h1>Seu estilo,<br>sua tecnologia,<br><em>seu mimo! ðŸ’—</em></h1>
        <p>AcessÃ³rios com carinho, para vocÃª.</p>
        <div class="hero-btns">
          <button class="btn-primary" onclick="showPage('iphone')">ðŸ“± Ver iPhones</button>
          <button class="btn-outline" onclick="showPage('xiaomi')">ðŸ¤– Ver Xiaomi</button>
        </div>
        <div style="margin-top:16px;background:rgba(255,255,255,.15);backdrop-filter:blur(8px);border:1px solid rgba(255,255,255,.3);border-radius:30px;padding:10px 22px;display:inline-flex;align-items:center;gap:8px">
          <span style="font-size:18px">ðŸ’³</span>
          <span style="color:#fff;font-size:13px;font-weight:800;letter-spacing:.3px">Parcelado em atÃ© 18Ã— + taxa da mÃ¡quina</span>
        </div>
      </div>
    </div>
  </div>

  <!-- TRUST BAR -->
  <div class="trust-bar">
    <div class="trust-inner">
      <div class="trust-item"><span class="icon">âœ…</span> Produtos de qualidade</div>
      <div class="trust-item"><span class="icon">ðŸ›¡ï¸</span> Compra 100% segura</div>
      <div class="trust-item"><span class="icon">ðŸšš</span> Entrega rÃ¡pida e segura</div>
      <div class="trust-item"><span class="icon">ðŸ’—</span> Atendimento com carinho</div>
    </div>
  </div>

  <!-- BANNERS -->
  <div class="banners-section">
    <div class="banners-grid">
      <div class="banner-card" onclick="goFilter('Semi-novo')" style="cursor:pointer">
        <img src="IMG_REMOVIDA" alt="iPhones Semi-novos" id="banner-semi">
      </div>
      <div class="banner-card" onclick="goFilter('Novo')" style="cursor:pointer">
        <img src="IMG_REMOVIDA" alt="iPhones Novos" id="banner-novos">
      </div>
    </div>
  </div>

  <!-- DESTAQUES -->
  <div class="products-section">
    <div class="section-hdr">
      <div>
        <div class="section-title">Destaques <span class="pill">Em oferta</span></div>
        <div class="section-sub">Os mais buscados da Mimo Store ðŸ’—</div>
      </div>
      <button class="see-all" onclick="showPage('iphone')">Ver todos â†’</button>
    </div>
    <div class="prod-grid" id="home-grid"></div>
  </div>
</div><!-- /page-home -->

<!-- IPHONE PAGE -->
<div id="page-iphone" style="display:none">
  <!-- Contra-capa banner shown based on filter -->
  <div id="iphone-banner-wrap" style="max-width:100%;overflow:hidden;margin-bottom:0">
    <img id="iphone-banner-img" src="IMG_REMOVIDA" 
      style="width:100%;object-fit:contain;display:block;cursor:pointer;max-height:400px"
      alt="Banner iPhone" onclick="window.open('https://wa.me/5565996480119','_blank')">
  </div>
  <div class="products-section">
    <div class="section-hdr">
      <div>
        <div class="section-title">iPhones ðŸ“± <span class="pill" id="iphone-count">0</span></div>
        <div class="section-sub">Novos, Semi-novos e Lacrados â€¢ Garantia garantida</div>
      </div>
    </div>
    <!-- filters only for iPhone -->
    <div class="filter-bar" id="iphone-filters">
      <span style="font-size:12px;font-weight:700;color:var(--gray);text-transform:uppercase;letter-spacing:.5px">Filtrar:</span>
      <button class="filter-pill on" onclick="setIFilter('Todos',this)">Todos</button>
      <button class="filter-pill" onclick="setIFilter('Novo',this)">âœ¨ Novos</button>
      <button class="filter-pill" onclick="setIFilter('Semi-novo',this)">ðŸ“± Semi-novos</button>

    </div>
    <div class="prod-grid" id="iphone-grid"></div>
    <div id="iphone-empty" style="display:none;text-align:center;padding:48px;color:var(--gray)">
      <div style="font-size:48px">ðŸ˜”</div>
      <h3 style="margin-top:12px;font-family:'Playfair Display',serif">Nenhum iPhone encontrado</h3>
      <p style="margin-top:8px">Tente outro filtro ou fale conosco pelo WhatsApp.</p>
    </div>
  </div>
</div>

<!-- XIAOMI PAGE -->
<div id="page-xiaomi" style="display:none">
  <div style="width:100%;overflow:hidden;border-bottom:2px solid var(--pink-pale)">
    <img src="IMG_REMOVIDA" style="width:100%;object-fit:contain;display:block;max-height:420px;background:var(--pink-ultra)" alt="Xiaomi">
  </div>
  <div class="products-section">
    <div class="section-hdr">
      <div>
        <div class="section-title">Xiaomi ðŸ¤– <span class="pill" id="xiaomi-count">0</span></div>
        <div class="section-sub">Todos novos e lacrados â€¢ Tecnologia que cabe no seu dia a dia!</div>
      </div>
    </div>
    <div class="prod-grid" id="xiaomi-grid"></div>
  </div>
</div>

<!-- QUEM SOMOS -->


  <!-- â•â•â• PAGE: ACESSÃ“RIOS â•â•â• -->
  <div id="page-acessorios" style="display:none">
    <div class="page-wrap">
      <!-- Banner acessÃ³rios -->
      <div class="banner-edit-wrap" style="position:relative;margin-bottom:24px">
        <img id="acess-banner-img" src="" alt="AcessÃ³rios" style="width:100%;max-height:280px;object-fit:cover;border-radius:20px;display:none">
        <div id="acess-banner-placeholder" style="width:100%;height:180px;background:linear-gradient(135deg,var(--pink),#c4158c);border-radius:20px;display:flex;align-items:center;justify-content:center;margin-bottom:8px">
          <div style="text-align:center;color:#fff">
            <div style="font-size:48px">ðŸŽ§</div>
            <div style="font-family:'Playfair Display',serif;font-size:28px;font-weight:900;margin-top:8px">AcessÃ³rios</div>
            <div style="font-size:14px;opacity:.85;margin-top:4px">Capinhas â€¢ Fones â€¢ Carregadores â€¢ PelÃ­culas</div>
          </div>
        </div>
      </div>
      <div class="prod-grid" id="acess-grid"></div>
    </div>
  </div>

  <!-- â•â•â• PAGE: CARRINHO â•â•â• -->
  <div id="page-carrinho" style="display:none">
    <div class="page-wrap">
      <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:24px;flex-wrap:wrap;gap:12px">
        <div>
          <h2 style="font-family:'Playfair Display',serif;font-size:28px;font-weight:900;color:var(--dark)">ðŸ›’ Meu Carrinho</h2>
          <p style="font-size:13px;color:var(--gray);margin-top:4px">Revise seus itens antes de finalizar</p>
        </div>
        <button onclick="showPage('home')" style="background:var(--pink-ultra);color:var(--pink);border:2px solid var(--pink-pale);padding:10px 20px;border-radius:30px;font-weight:800;font-size:13px;cursor:pointer;font-family:'Nunito',sans-serif;display:flex;align-items:center;gap:6px">
          â† Continuar comprando
        </button>
      </div>

      <div id="cart-avail-warn" class="cart-avail-warn">
        âš ï¸ Seu carrinho contÃ©m itens <b>semi-novos</b>. A disponibilidade serÃ¡ confirmada pelo WhatsApp antes de finalizar.
      </div>

      <div id="cart-items"></div>

      <div id="cart-summary" style="display:none">
        <div class="cart-summary">
          <div class="cart-total-label">Total do pedido</div>
          <div class="cart-total-val" id="cart-total">R$ 0,00</div>
          <div class="cart-actions">
            <button class="cart-btn-continue" onclick="showPage('home')">â† Continuar comprando</button>
            <button class="cart-btn-finish" onclick="finishCart()">
              <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z"/><path d="M12 0C5.373 0 0 5.373 0 12s5.373 12 12 12 12-5.373 12-12S18.627 0 12 0zm6.127 17.176c-.285.791-1.384 1.498-2.13 1.629-.568.1-1.289.143-2.076-.13a18.347 18.347 0 01-1.834-.677c-3.23-1.396-5.336-4.608-5.495-4.822-.152-.208-1.238-1.648-1.238-3.143 0-1.495.784-2.23 1.063-2.534.278-.303.607-.379.809-.379l.58.011c.188.009.44-.071.688.527.258.621.877 2.143.954 2.299.077.157.128.341.025.548-.102.208-.154.338-.308.52-.154.183-.324.408-.463.548-.139.14-.284.293-.122.575.163.283.723 1.191 1.551 1.928 1.065.949 1.963 1.243 2.241 1.381.278.137.44.115.603-.07.163-.185.699-.814.884-1.094.185-.279.37-.232.624-.139.254.092 1.616.762 1.893.902.278.14.463.209.532.325.069.115.069.67-.216 1.463z"/></svg>
              Finalizar pelo WhatsApp
            </button>
          </div>
        </div>
        <p style="font-size:11px;color:var(--gray);text-align:center;margin-top:12px">
          ðŸ’³ Parcelamos em atÃ© 18Ã— + taxa da mÃ¡quina â€¢ ðŸ“ CuiabÃ¡-MT
        </p>
      </div>
    </div>
  </div>

<div id="page-quem" style="display:none">
  <div class="quem-section">
    <div class="quem-inner">
      <img src="IMG_REMOVIDA" class="quem-logo" alt="Mimo Store">
      <h2>Quem somos ðŸ’—</h2>
      <p>Somos um casal que decidiu comeÃ§ar a empreender em uma nova Ã¡rea, com muito amor, dedicaÃ§Ã£o e vontade de crescer juntos âœ¨<br><br>
      Criamos a <strong>Mimo Store</strong> com o objetivo de oferecer produtos de qualidade, com confianÃ§a e um atendimento diferenciado ðŸ“±<br><br>
      Cada detalhe foi pensado com carinho, para levar atÃ© vocÃª nÃ£o sÃ³ tecnologia, mas tambÃ©m uma experiÃªncia especial ðŸ’—<br><br>
      Mais do que vender, queremos conquistar clientes e construir uma relaÃ§Ã£o de confianÃ§a ðŸ¤</p>
      <div class="quem-grid">
        <div class="quem-item"><span class="icon">âœ…</span><strong>Produtos Originais</strong><span>Qualidade garantida</span></div>
        <div class="quem-item"><span class="icon">ðŸ›¡ï¸</span><strong>Garantia</strong><span>30 dias em todos</span></div>
        <div class="quem-item"><span class="icon">ðŸšš</span><strong>Entrega RÃ¡pida</strong><span>Para todo o Brasil</span></div>
        <div class="quem-item"><span class="icon">ðŸ’—</span><strong>Atendimento</strong><span>Com muito carinho</span></div>
        <div class="quem-item"><span class="icon">ðŸ“±</span><strong>iPhone & Xiaomi</strong><span>As melhores marcas</span></div>
        <div class="quem-item"><span class="icon">ðŸ’³</span><strong>Parcele</strong><span>Facilidade no pagamento</span></div>
      </div>
    </div>
  </div>
</div>

<!-- CONTATO -->
<div id="page-contato" style="display:none">
  <div class="quem-section">
    <div class="quem-inner">
      <h2>Fale com a gente ðŸ’—</h2>
      <p>Estamos prontos para te atender com todo carinho!</p>
      <div class="quem-grid" style="margin-top:24px">
        <a href="https://wa.me/5565996480119" target="_blank" class="quem-item" style="text-decoration:none;background:#e7fef0;border-color:#25d366;cursor:pointer">
          <span class="icon">ðŸ’¬</span><strong style="color:#16a34a">WhatsApp</strong><span>65 99648-0119</span>
        </a>
        <a href="https://instagram.com/mimostore.cba" target="_blank" class="quem-item" style="text-decoration:none;background:#fce4f0;border-color:var(--pink);cursor:pointer">
          <span class="icon">ðŸ“¸</span><strong style="color:var(--pink)">Instagram</strong><span>@mimostore.cba</span>
        </a>
        <div class="quem-item">
          <span class="icon">ðŸ“</span><strong>LocalizaÃ§Ã£o</strong><span>CuiabÃ¡ - MT</span>
        </div>
        <a href="tel:5565996480119" class="quem-item" style="text-decoration:none;cursor:pointer">
          <span class="icon">ðŸ“ž</span><strong>Telefone</strong><span>65 99648-0119</span>
        </a>
      </div>
      <div style="margin-top:32px">
        <a href="https://wa.me/5565996480119?text=OlÃ¡!%20Vim%20pelo%20site%20da%20Mimo%20Store%20e%20gostaria%20de%20mais%20informaÃ§Ãµes." target="_blank" class="btn-primary" style="display:inline-flex;text-decoration:none">
          ðŸ’¬ Enviar mensagem no WhatsApp
        </a>
      </div>
    </div>
  </div>
</div>

</div><!-- /public-area -->

<!-- FOOTER -->
<footer id="site-footer">
  <div class="footer-inner">
    <img src="IMG_REMOVIDA" class="footer-logo" alt="Mimo Store">
    <div class="footer-links">
      <a href="#" onclick="showPage('home')">InÃ­cio</a>
      <a href="#" onclick="showPage('iphone')">iPhones</a>
      <a href="#" onclick="showPage('xiaomi')">Xiaomi</a>
      <a href="#" onclick="showPage('quem')">Quem somos</a>
      <a href="#" onclick="showPage('contato')">Contato</a>
    </div>
    <div class="footer-contact">
      <span>ðŸ’— AcessÃ³rios com carinho, para vocÃª.</span>
      <a href="tel:5565996480119">ðŸ“ž 65 99648-0119</a>
      <a href="https://instagram.com/mimostore.cba" target="_blank">ðŸ“¸ @mimostore.cba</a>
      <a href="#">ðŸ“ CuiabÃ¡ - MT</a>
    </div>
  </div>
  <div class="footer-bottom">Â© 2025 Mimo Store â€¢ SEU ESTILO, SUA TECNOLOGIA, SEU MIMO! ðŸ’—</div>
</footer>

<!-- PRODUCT MODAL -->
<div class="modal-ov" id="modal-ov" onclick="if(event.target===this)closeModal()">
  <div class="modal-box" id="modal-box"></div>
</div>

<!-- ADMIN LOGIN -->
<div id="admin-login-ov">
  <div class="login-card">
    <img src="IMG_REMOVIDA" class="logo-img" alt="Logo">
    <h2>Painel Admin</h2>
    <div class="field"><label>UsuÃ¡rio</label><input id="l-user" value="admin"></div>
    <div class="field"><label>Senha</label><input type="password" id="l-pass" placeholder="â€¢â€¢â€¢â€¢â€¢â€¢â€¢â€¢" onkeydown="if(event.key==='Enter')doLogin()"></div>
    <button class="btn-pink" onclick="doLogin()">Entrar</button>
    <p class="login-err" id="l-err">Senha incorreta.</p>
    <button class="login-back-btn" onclick="closeAdminLogin()">â† Voltar ao site</button>
  </div>
</div>

<!-- ADMIN PANEL -->
<div id="admin-panel">
  <div class="admin-top">
    <div class="admin-top-title">âš™ï¸ Admin â€” <span style="color:var(--pink-light)">Mimo Store</span></div>
    <div class="admin-tabs-bar">
      <button class="admin-tab-btn on" onclick="aTab('consulta',this)">ðŸ” Consulta</button>
      <button class="admin-tab-btn" onclick="aTab('add',this)">âž• Adicionar</button>
      <button class="admin-tab-btn" onclick="aTab('import',this)">ðŸ“Š Importar</button>
      <button class="admin-tab-btn" onclick="aTab('config',this)">âš™ï¸ ConfiguraÃ§Ãµes</button>
      <button class="admin-tab-btn" onclick="aTab('stats',this)">ðŸ“ˆ Resumo</button>
    </div>
    <button class="admin-logout-btn" onclick="doLogout()">Sair</button>
  </div>
  <div class="admin-content">

    <!-- â•â•â• CONFIGURAÃ‡Ã•ES â•â•â• -->
    <div id="atab-config" style="display:none">
      <div style="display:grid;grid-template-columns:1fr 1fr;gap:20px;flex-wrap:wrap">
        
        <!-- Banners -->
        <div class="form-card" style="grid-column:1/-1">
          <h3>ðŸ–¼ï¸ Banners da PÃ¡gina Inicial</h3>
          <p style="color:var(--gray);font-size:13px;margin-bottom:20px">Clique para trocar cada banner. A mudanÃ§a Ã© imediata.</p>
          <div style="display:grid;grid-template-columns:1fr 1fr;gap:16px">
            <div>
              <div class="field"><label>Banner Semi-novos (capa)</label>
                <label style="display:block;cursor:pointer;border:2px dashed var(--pink-pale);border-radius:12px;overflow:hidden">
                  <img id="prev-semi-capa" src="IMG_REMOVIDA" style="width:100%;max-height:120px;object-fit:contain;background:var(--pink-ultra)">
                  <input type="file" accept="image/*" style="display:none" onchange="swapBanner(this,'semi-capa','banner-semi')">
                  <div style="text-align:center;padding:8px;font-size:12px;font-weight:700;color:var(--pink)">ðŸ“ Trocar imagem</div>
                </label>
              </div>
              <div class="field"><label>Contra-capa Semi-novos</label>
                <label style="display:block;cursor:pointer;border:2px dashed var(--pink-pale);border-radius:12px;overflow:hidden">
                  <img id="prev-semi-contra" src="IMG_REMOVIDA" style="width:100%;max-height:120px;object-fit:contain;background:var(--pink-ultra)">
                  <input type="file" accept="image/*" style="display:none" onchange="swapBanner(this,'semi-contra',null)">
                  <div style="text-align:center;padding:8px;font-size:12px;font-weight:700;color:var(--pink)">ðŸ“ Trocar imagem</div>
                </label>
              </div>
            </div>
            <div>
              <div class="field"><label>Banner iPhones Novos (capa)</label>
                <label style="display:block;cursor:pointer;border:2px dashed var(--pink-pale);border-radius:12px;overflow:hidden">
                  <img id="prev-novos-capa" src="IMG_REMOVIDA" style="width:100%;max-height:120px;object-fit:contain;background:var(--pink-ultra)">
                  <input type="file" accept="image/*" style="display:none" onchange="swapBanner(this,'novos-capa','banner-novos')">
                  <div style="text-align:center;padding:8px;font-size:12px;font-weight:700;color:var(--pink)">ðŸ“ Trocar imagem</div>
                </label>
              </div>
              <div class="field"><label>Contra-capa iPhones Novos</label>
                <label style="display:block;cursor:pointer;border:2px dashed var(--pink-pale);border-radius:12px;overflow:hidden">
                  <img id="prev-novos-contra" src="IMG_REMOVIDA" style="width:100%;max-height:120px;object-fit:contain;background:var(--pink-ultra)">
                  <input type="file" accept="image/*" style="display:none" onchange="swapBanner(this,'novos-contra',null)">
                  <div style="text-align:center;padding:8px;font-size:12px;font-weight:700;color:var(--pink)">ðŸ“ Trocar imagem</div>
                </label>
              </div>
            </div>
          </div>
        </div>

        <!-- Contato -->
        <div class="form-card">
          <h3>ðŸ“ž Dados de Contato</h3>
          <div class="field"><label>WhatsApp (sÃ³ nÃºmeros)</label><input id="cfg-whats" value="5565996480119" oninput="saveConfig()"></div>
          <div class="field"><label>Telefone exibido</label><input id="cfg-tel" value="65 99648-0119" oninput="saveConfig()"></div>
          <div class="field"><label>Instagram (@usuario)</label><input id="cfg-insta" value="mimostore.cba" oninput="saveConfig()"></div>
          <div class="field"><label>LocalizaÃ§Ã£o</label><input id="cfg-local" value="CuiabÃ¡ - MT" oninput="saveConfig()"></div>
          <button class="btn-pink-sm" onclick="applyConfig()">âœ… Aplicar Contatos</button>
        </div>

        <!-- Margem global -->
        <div class="form-card">
          <h3>ðŸ’° Margem de Lucro Global</h3>
          <p style="color:var(--gray);font-size:13px;margin-bottom:16px">Define a margem por categoria. Produtos com margem personalizada (ðŸ”’) podem ser preservados.</p>
          <div style="display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-bottom:12px">
            <div class="field"><label>ðŸ“± iPhone Novo / Lacrado (%)</label><input type="number" id="cfg-margin-iphone-novo" value="20" min="0" max="500"></div>
            <div class="field"><label>ðŸ“± iPhone Semi-novo (%)</label><input type="number" id="cfg-margin-iphone-semi" value="20" min="0" max="500"></div>
            <div class="field" style="grid-column:1/-1"><label>ðŸ¤– Xiaomi / Android / Outros (%)</label><input type="number" id="cfg-margin-xmi-novo" value="20" min="0" max="500"></div>
          </div>
          <label style="display:flex;align-items:center;gap:8px;font-size:13px;font-weight:600;cursor:pointer;margin-bottom:14px">
            <input type="checkbox" id="cfg-skip-custom" checked style="width:16px;height:16px;accent-color:var(--pink)">
            ðŸ”’ Preservar produtos com margem personalizada
          </label>
          <button class="btn-pink-sm" onclick="applyGlobalMargin()">âœ… Aplicar margem global</button>
          <div id="margin-result" style="margin-top:10px;font-size:13px;font-weight:700;color:var(--green)"></div>
        </div>

      </div>
    </div>

    <!-- CONSULTA -->
    <div id="atab-consulta">
      <div class="admin-search-wrap">
        <input id="admin-q" placeholder="ðŸ” Buscar por modelo, cor, capacidade, condiÃ§Ã£o, fornecedor..." oninput="renderAdminTbl()">
      </div>
      <div class="tbl-wrap"><table class="admin-tbl">
        <thead><tr>
          <th>#</th><th>Fornecedor</th><th>Marca</th><th>CondiÃ§Ã£o</th><th>Modelo</th>
          <th>Cap.</th><th>Cor</th><th>Origem</th><th>Bateria</th><th>Custo</th>
          <th>Margem%</th><th>Venda</th><th>DisponÃ­vel</th><th>Obs</th><th>AÃ§Ãµes</th>
        </tr></thead>
        <tbody id="admin-tbody"></tbody>
      </table></div>
    </div>

    <!-- ADD -->
    <div id="atab-add" style="display:none">
      <div class="form-card">
        <h3>âž• Adicionar Produto</h3>
        <div class="form-row">
          <div class="field"><label>Fornecedor</label><select id="f-forn"><option>DÃ©cio</option><option>Gugu Cell</option><option>FeirÃ£o Importados</option><option>Outro</option></select></div>
          <div class="field"><label>Marca</label><select id="f-marca"><option>Apple</option><option>Xiaomi</option><option>Samsung</option><option>Motorola</option><option>Realme</option><option>POCO</option><option>Outro</option><option value="AcessÃ³rio">ðŸŽ§ AcessÃ³rio</option></select></div>
        </div>
        <div class="form-row">
          <div class="field"><label>CondiÃ§Ã£o</label><select id="f-cond"><option>Novo</option><option>Semi-novo</option></select></div>
          <div class="field"><label>Tipo Origem</label><select id="f-orig"><option>Nacional</option><option>CPO</option><option>ANATEL</option><option>Americano</option><option>â€”</option></select></div>
        </div>
        <div class="field full"><label>Modelo</label><input id="f-modelo" placeholder="Ex: iPhone 15 Pro Max, Redmi Note 15 5G..." oninput="updPreview()"></div>
        <div class="form-row three">
          <div class="field"><label>Capacidade</label><input id="f-cap" placeholder="Ex: 128GB, 8/256GB" oninput="updPreview()"></div>
          <div class="field"><label>Cor</label><input id="f-cor" placeholder="Ex: Preto, Rosa..."></div>
          <div class="field"><label>Bateria % (semi-novos)</label><input type="number" id="f-bat" placeholder="Ex: 87" min="0" max="100"></div>
        </div>
        <div class="form-row">
          <div class="field"><label>PreÃ§o Custo (R$)</label><input type="number" id="f-custo" placeholder="Ex: 3850" oninput="updPreview()"></div>
          <div class="field"><label>Margem de Lucro (%)</label><input type="number" id="f-margin" value="20" min="0" max="200" oninput="updPreview()"></div>
        </div>
        <div class="form-row">
          <div class="field">
            <label>PreÃ§o de Venda Manual (R$) <span style="color:var(--gray);font-weight:400;font-size:11px">â€” deixe vazio para calcular pelo custo + margem</span></label>
            <input type="number" id="f-venda-manual" placeholder="Ex: 4999" min="0" step="0.01" oninput="updPreview()">
          </div>
        </div>
        <div class="field"><label>Imagem do Produto</label>
  <div style="display:flex;gap:10px;align-items:center;flex-wrap:wrap">
    <label style="background:var(--pink);color:#fff;padding:10px 18px;border-radius:10px;cursor:pointer;font-weight:700;font-size:13px;display:inline-flex;align-items:center;gap:6px">
      ðŸ“ Escolher foto <input type="file" id="f-img-file" accept="image/*" style="display:none" onchange="loadImgFile(this)">
    </label>
    <span style="font-size:12px;color:var(--gray)" id="f-img-name">Nenhuma imagem selecionada</span>
  </div>
  <div id="f-img-preview" style="margin-top:10px;display:none">
    <img id="f-img-prev-img" style="max-height:120px;border-radius:10px;border:2px solid var(--pink-pale)" alt="Preview">
  </div>
  <input type="hidden" id="f-img">
</div>
        <div class="field"><label>ObservaÃ§Ã£o</label><input id="f-obs" placeholder="Ex: Bateria 87%, Americano, etc."></div>
        <div class="price-preview" id="price-prev">
          <div class="label">PreÃ§o de Venda</div>
          <div class="value">â€”</div>
        </div>
        <button class="btn-pink-sm" onclick="addProd()">âœ… Adicionar ao CatÃ¡logo</button>
      </div>
    </div>

    <!-- IMPORT -->
    <div id="atab-import" style="display:none">
      <div class="form-card">
        <h3>ðŸ“Š Importar Planilha de Fornecedor</h3>
        <p style="color:var(--gray);font-size:14px;margin-bottom:20px">Importe um arquivo CSV ou Excel com os produtos do fornecedor. O sistema reconhece automaticamente as colunas.</p>
        <div class="import-area" onclick="document.getElementById('csv-input').click()">
          <input type="file" id="csv-input" accept=".csv,.xlsx,.xls" onchange="importFile(this)">
          <div class="import-icon">ðŸ“</div>
          <h4>Clique para selecionar o arquivo</h4>
          <p>Formatos aceitos: .CSV</p>
        </div>
        <div class="import-format">
          <strong>ðŸ“‹ Formato das colunas (separadas por |):</strong>
          <table style="width:100%;border-collapse:collapse;margin:10px 0;font-size:12px">
            <tr style="background:var(--pink-pale)">
              <th style="padding:6px 10px;text-align:left;border-radius:6px 0 0 0">#</th>
              <th style="padding:6px 10px;text-align:left">Coluna</th>
              <th style="padding:6px 10px;text-align:left;border-radius:0 6px 0 0">DescriÃ§Ã£o / Valores aceitos</th>
            </tr>
            <tr><td style="padding:5px 10px">1</td><td><b>fornecedor</b></td><td>Ex: DÃ©cio, Gugu Cell, FeirÃ£o</td></tr>
            <tr style="background:#fafafa"><td style="padding:5px 10px">2</td><td><b>marca</b></td><td>Apple, Xiaomi, Samsung, Motorola, <b>AcessÃ³rio</b>...</td></tr>
            <tr><td style="padding:5px 10px">3</td><td><b>condicao</b></td><td>Novo, Semi-novo</td></tr>
            <tr style="background:#fafafa"><td style="padding:5px 10px">4</td><td><b>modelo</b></td><td>iPhone 16, Redmi Note 15... <b>(obrigatÃ³rio)</b></td></tr>
            <tr><td style="padding:5px 10px">5</td><td><b>capacidade</b></td><td>128GB, 8/256GB, 1TB...</td></tr>
            <tr style="background:#fafafa"><td style="padding:5px 10px">6</td><td><b>cor</b></td><td>Preto, Azul, Natural...</td></tr>
            <tr><td style="padding:5px 10px">7</td><td><b>origem</b></td><td>Nacional, ANATEL, CPO, Americano</td></tr>
            <tr style="background:#fafafa"><td style="padding:5px 10px">8</td><td><b>bateria</b></td><td>85 (nÃºmero inteiro, %). Use â€” se nÃ£o souber</td></tr>
            <tr><td style="padding:5px 10px">9</td><td><b>custo</b></td><td>PreÃ§o de custo em R$ <b>(obrigatÃ³rio)</b></td></tr>
            <tr style="background:#fafafa"><td style="padding:5px 10px">10</td><td><b>margem</b></td><td><b>% de lucro</b> sobre o custo. Ex: 20 = vende por custo + 20%</td></tr>
            <tr><td style="padding:5px 10px">11</td><td><b>obs</b></td><td>ObservaÃ§Ãµes livres (opcional)</td></tr>
          </table>
          <strong>âœ… Exemplo de linhas:</strong><br>
          <code style="font-size:11px;background:#f5f5f5;padding:8px;display:block;border-radius:8px;margin-top:6px;line-height:1.8">
          DÃ©cio | Apple | Novo | iPhone 16 | 128GB | Preto | Nacional | â€” | 4450 | 20 | CPO<br>
          DÃ©cio | Apple | Semi-novo | iPhone 14 | 256GB | Preto | â€” | 88 | 2050 | 20 | Bateria 88%<br>
          Gugu Cell | Xiaomi | Novo | Redmi Note 15 | 8/256GB | Azul | Nacional | â€” | 1690 | 20 | â€”
          </code>
        </div>
        <div id="import-result" style="margin-top:16px"></div>
      </div>
    </div>

    <!-- STATS -->
    <div id="atab-stats" style="display:none">
      <div class="stats-grid" id="stats-boxes"></div>
    </div>

  </div>
</div>

<script>
// â•â•â• DATA â•â•â•
let P = JSON.parse(localStorage.getItem('mimo_v2') || 'null');

// Carregar do banco de dados ao iniciar
async function carregarDoBanco() {
  try {
    const res = await fetch('/api/produtos');
    if (res.ok) {
      const dados = await res.json();
      if (dados && dados.length > 0) {
        P = dados;
        localStorage.setItem('mimo_v2', JSON.stringify(P));
        nxtId = Math.max(...P.map(x=>x.id))+1;
        renderAll();
        console.log('Produtos carregados do banco:', P.length);
      }
    }
  } catch(e) {
    console.log('Usando dados locais:', e);
  }
}

if(!P) P = [
  {id:1,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"Preto",orig:"â€”",bat:85,custo:1150,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:2,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"Verde",orig:"â€”",bat:84,custo:1150,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:3,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"LilÃ¡s",orig:"â€”",bat:81,custo:1150,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:4,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12 Mini",cap:"256GB",cor:"Vermelho",orig:"â€”",bat:92,custo:1150,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"Bateria 92%",avail:true},
  {id:5,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13",cap:"128GB",cor:"Preto",orig:"â€”",bat:86,custo:1750,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:6,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13",cap:"128GB",cor:"Rosa",orig:"â€”",bat:85,custo:1750,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:7,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13",cap:"128GB",cor:"Branco",orig:"â€”",bat:100,custo:1750,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"Bateria 100%",avail:true},
  {id:8,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 14",cap:"128GB",cor:"Preto",orig:"â€”",bat:84,custo:1850,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:9,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 14",cap:"256GB",cor:"Preto",orig:"â€”",bat:88,custo:2050,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:10,forn:"DÃ©cio",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 16 Pro Max",cap:"256GB",cor:"Desert",orig:"â€”",bat:92,custo:5050,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:11,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 15",cap:"128GB",cor:"Rosa",orig:"Nacional",bat:100,custo:3850,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:12,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 15",cap:"128GB",cor:"Preto",orig:"ANATEL",bat:100,custo:3950,margin:20,cpo:"NÃ£o",anatel:"Sim",img:"",obs:"ANATEL",avail:true},
  {id:13,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 15 Pro",cap:"128GB",cor:"Azul",orig:"CPO",bat:100,custo:4600,margin:20,cpo:"Sim",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:14,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16",cap:"128GB",cor:"Rosa",orig:"Nacional",bat:100,custo:4450,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:15,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16",cap:"128GB",cor:"Preto",orig:"Nacional",bat:100,custo:4450,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:16,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16 Pro",cap:"256GB",cor:"Desert",orig:"CPO",bat:100,custo:6000,margin:20,cpo:"Sim",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:17,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 16 Pro Max",cap:"256GB",cor:"Natural",orig:"CPO",bat:100,custo:6500,margin:20,cpo:"Sim",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:18,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 17",cap:"256GB",cor:"Lavanda",orig:"Nacional",bat:100,custo:5200,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:19,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro",cap:"256GB",cor:"Laranja",orig:"Nacional",bat:100,custo:7500,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:20,forn:"DÃ©cio",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro Max",cap:"256GB",cor:"Azul",orig:"Nacional",bat:100,custo:8000,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:21,forn:"Gugu Cell",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 12",cap:"128GB",cor:"â€”",orig:"â€”",bat:null,custo:1550,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"Grade A â€” Consultar bateria",avail:true},
  {id:22,forn:"Gugu Cell",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 13 Pro",cap:"128GB",cor:"â€”",orig:"â€”",bat:null,custo:2250,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"Grade A",avail:true},
  {id:23,forn:"Gugu Cell",marca:"Apple",cond:"Semi-novo",modelo:"iPhone 15 Pro Max",cap:"256GB",cor:"â€”",orig:"â€”",bat:null,custo:3950,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"Grade A",avail:true},
  {id:24,forn:"Gugu Cell",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro",cap:"256GB",cor:"Branco",orig:"Americano",bat:100,custo:7400,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"Americano â€” Garantia Apple",avail:true},
  {id:25,forn:"Gugu Cell",marca:"Apple",cond:"Novo",modelo:"iPhone 17 Pro Max",cap:"256GB",cor:"Laranja",orig:"Americano",bat:100,custo:7800,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"Americano â€” Garantia Apple",avail:true},
  {id:26,forn:"DÃ©cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi A5",cap:"3/64GB",cor:"Preto",orig:"Nacional",bat:100,custo:550,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:27,forn:"DÃ©cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi A5",cap:"4/128GB",cor:"Verde",orig:"Nacional",bat:100,custo:650,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:28,forn:"DÃ©cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi 15C",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:890,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:29,forn:"DÃ©cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 14 5G",cap:"8/256GB",cor:"Verde",orig:"Nacional",bat:100,custo:1390,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:30,forn:"DÃ©cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 15 5G",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:1590,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:31,forn:"DÃ©cio",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 15 Pro 5G",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:1990,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:32,forn:"DÃ©cio",marca:"POCO",cond:"Novo",modelo:"POCO M7 Pro 5G",cap:"8/256GB",cor:"Preto",orig:"Nacional",bat:100,custo:1590,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
  {id:33,forn:"Gugu Cell",marca:"Xiaomi",cond:"Novo",modelo:"Redmi Note 15 Pro",cap:"8/256GB",cor:"Preto/Azul",orig:"Nacional",bat:100,custo:1750,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"VÃ¡rias cores",avail:true},
  {id:34,forn:"Gugu Cell",marca:"POCO",cond:"Novo",modelo:"POCO X7 Pro",cap:"12/512GB",cor:"Preto/Amarelo/Verde",orig:"Nacional",bat:100,custo:2690,margin:20,cpo:"NÃ£o",anatel:"NÃ£o",img:"",obs:"",avail:true},
];
saveP();

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
  // Salvar no banco de dados
  fetch('/api/produtos', {
    method: 'POST',
    headers: {'Content-Type':'application/json'},
    body: JSON.stringify({produtos: P})
  }).catch(e => console.log('Banco offline, salvando local:', e));
}

// â•â•â• CART â•â•â•
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
  // Visual feedback
  const btn=document.getElementById('add-cart-btn-'+id);
  if(btn){btn.textContent='âœ… Adicionado!';btn.classList.add('added');setTimeout(()=>{btn.textContent='ðŸ›’ Adicionar ao Carrinho';btn.classList.remove('added');},1500);}
  showCartToast(p.modelo);
}

function showCartToast(nome){
  let t=document.getElementById('cart-toast');
  if(!t){t=document.createElement('div');t.id='cart-toast';
    t.style.cssText='position:fixed;bottom:100px;left:50%;transform:translateX(-50%);background:#1a0a12;color:#fff;padding:10px 20px;border-radius:30px;font-size:13px;font-weight:700;z-index:500;opacity:0;transition:.3s;pointer-events:none;white-space:nowrap';
    document.body.appendChild(t);}
  t.textContent='ðŸ›’ '+nome+' adicionado!';
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
    wrap.innerHTML=`<div class="cart-empty"><div class="cart-empty-icon">ðŸ›’</div><div style="font-size:20px;font-weight:800;margin-bottom:8px">Seu carrinho estÃ¡ vazio</div><div style="font-size:14px;color:var(--gray)">Adicione produtos para continuar</div><button onclick="showPage('home')" style="margin-top:20px;background:var(--pink);color:#fff;border:none;padding:12px 28px;border-radius:30px;font-weight:800;font-size:15px;cursor:pointer;font-family:'Nunito',sans-serif">ðŸ›ï¸ Explorar produtos</button></div>`;
    if(summary) summary.style.display='none';
    if(warn) warn.classList.remove('show');
    return;
  }
  const hasSemi=CART.some(x=>x.p.cond==='Semi-novo');
  if(warn) warn.classList.toggle('show',hasSemi);
  wrap.innerHTML=CART.map(item=>{
    const p=item.p; const v=venda(p);
    const imgHTML=p.img?`<img src="${p.img}" style="width:64px;height:64px;object-fit:contain;border-radius:10px" alt="${p.modelo}">`:`<div class="cart-item-img">${p.marca==='Apple'?'ðŸ“±':p.marca==='AcessÃ³rio'?'ðŸŽ§':'ðŸ¤–'}</div>`;
    return `<div class="cart-item">
      ${imgHTML}
      <div class="cart-item-info">
        <div class="cart-item-name">${p.modelo}</div>
        <div class="cart-item-sub">${p.cap} â€¢ ${p.cor}${p.obs?' â€¢ '+p.obs:''}</div>
        ${p.cond==='Semi-novo'?'<span class="cart-item-semi">ðŸ“± Semi-novo â€” verificar disponibilidade</span>':''}
        <div class="cart-item-price">${brl(v*item.qty)}</div>
      </div>
      <div class="cart-qty">
        <button class="cart-qty-btn" onclick="changeQty(${p.id},-1)">âˆ’</button>
        <span class="cart-qty-num">${item.qty}</span>
        <button class="cart-qty-btn" onclick="changeQty(${p.id},+1)">+</button>
      </div>
      <button class="cart-remove" onclick="removeFromCart(${p.id})" title="Remover">ðŸ—‘ï¸</button>
    </div>`;
  }).join('');
  if(summary){
    summary.style.display='block';
    document.getElementById('cart-total').textContent=brl(cartTotal());
  }
}

function finishCart(){
  if(CART.length===0){alert('Seu carrinho estÃ¡ vazio!');return;}
  const itens=CART.map(x=>`â–ª ${x.p.modelo} ${x.p.cap} ${x.p.cor} (x${x.qty}) â€” ${brl(venda(x.p)*x.qty)}`).join('%0A');
  const total=brl(cartTotal());
  const semi=CART.some(x=>x.p.cond==='Semi-novo');
  const aviso=semi?'%0A%0Aâš  Itens seminovos sujeitos Ã  confirmaÃ§Ã£o de disponibilidade.':'';
  const msg=`OlÃ¡! Gostaria de fazer um pedido:%0A%0AðŸ›’ *MEU PEDIDO:*%0A${itens}%0A${'â”'.repeat(20)}%0AðŸ’° *TOTAL: ${total}*${aviso}%0A%0AAguardo confirmaÃ§Ã£o!`;
  window.open(`https://wa.me/5565996480119?text=${msg}`,'_blank');
  CART=[]; saveCart(); updateCartBadge();
  showPage('home');
}
function venda(p){return p.vendaManual&&p.vendaManual>0?p.vendaManual:Math.round(p.custo*(1+p.margin/100))}
function brl(n){return 'R$ '+n.toLocaleString('pt-BR')+',00'}
function batCls(b){if(!b)return'';return b>=90?'bat-green':b>=80?'bat-yellow':'bat-red'}

// â•â•â• PAGES â•â•â•
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
}

// â•â•â• PRODUCT IMAGE HELPER â•â•â•
const iPhone_BANNER = "IMG_REMOVIDA";
const XIAOMI_BANNER = "IMG_REMOVIDA";

function getImg(p){
  // Show custom image if uploaded (base64 or URL)
  if(p.img && p.img.length > 10){
    return `<img class="prod-img" src="${p.img}" alt="${p.modelo}" style="max-height:140px;object-fit:contain" onerror="this.style.display='none'">`;
  }
  if(p.marca==='Apple'){
    return `<img class="prod-img" src="${iPhone_BANNER}" alt="${p.modelo}" style="max-height:110px;opacity:.85">`;
  }
  if(p.marca==='AcessÃ³rio') return `<div class="prod-img" style="display:flex;align-items:center;justify-content:center;height:110px;font-size:48px">ðŸŽ§</div>`;
  return `<img class="prod-img" src="${XIAOMI_BANNER}" alt="${p.modelo}" style="max-height:110px;opacity:.85">`;
}

function getModalImg(p){
  if(p.img && p.img.length > 10){
    return `<img class="modal-img" src="${p.img}" alt="${p.modelo}" style="max-height:220px;object-fit:contain">`;
  }
  if(p.marca==='Apple') return `<img class="modal-img" src="${iPhone_BANNER}" alt="${p.modelo}" style="opacity:.85">`;
  if(p.marca==='AcessÃ³rio') return `<div class="modal-img" style="display:flex;align-items:center;justify-content:center;font-size:80px;background:var(--pink-ultra);border-radius:16px">ðŸŽ§</div>`;
  return `<img class="modal-img" src="${XIAOMI_BANNER}" alt="${p.modelo}" style="opacity:.85">`;
}

// â•â•â• CARD HTML â•â•â•
function cardHTML(p, idx){
  const v=venda(p);
  const badges=[];
  if(p.cond==='Novo') badges.push('<span class="badge-new">âœ¨ NOVO</span>');
  else badges.push('<span class="badge-used">ðŸ“± SEMI-NOVO</span>');
  if(p.cpo==='Sim') badges.push('<span class="badge-cpo">CPO</span>');
  if(p.anatel==='Sim') badges.push('<span class="badge-anatel">ðŸ‡§ðŸ‡· ANATEL</span>');
  const batHTML = p.bat && p.bat<100 ? `
    <div class="prod-bat"><span>ðŸ”‹ Bateria</span>
      <div class="bat-bar"><div class="bat-fill ${batCls(p.bat)}" style="width:${p.bat}%"></div></div>
      <strong class="${batCls(p.bat)}" style="font-size:12px">${p.bat}%</strong>
    </div>` : '';
  return `<div class="prod-card" onclick="openModal(${p.id})" style="animation-delay:${idx*0.04}s">
    <div class="prod-badge">${badges.join('')}</div>
    <div class="prod-img-wrap">${getImg(p)}</div>
    <div class="prod-body">
      <div class="prod-brand">${p.marca}</div>
      <div class="prod-name">${p.modelo}</div>
      <div class="prod-specs">
        <span class="spec">${p.cap}</span>
        ${p.cor&&p.cor!=='â€”'?`<span class="spec gray">${p.cor}</span>`:''}
        ${p.orig&&p.orig!=='â€”'?`<span class="spec gray">${p.orig}</span>`:''}
      </div>
      ${batHTML}
      ${p.obs?`<div style="font-size:11px;color:var(--pink);margin-top:6px;font-weight:700">${p.obs}</div>`:''}
    </div>
    <div class="prod-price-row">
      <div><div style="font-size:10px;color:var(--gray);text-transform:uppercase;letter-spacing:.5px;font-weight:700">PreÃ§o</div>
        <div class="prod-price">${brl(v)}</div>
      </div>
      <button class="prod-buy" onclick="event.stopPropagation();window.open('https://wa.me/5565996480119?text=OlÃ¡!%20Tenho%20interesse%20no%20'+encodeURIComponent('${p.modelo} ${p.cap} ${p.cor}'),'_blank')">ðŸ’¬ Comprar</button>
    </div>
  </div>`;
}

function goFilter(cond){
  showPage('iphone');
  ifFilter = cond;
  // Activate correct pill
  document.querySelectorAll('#iphone-filters .filter-pill').forEach(b=>{
    b.classList.remove('on');
    if(b.textContent.includes('Semi') && cond==='Semi-novo') b.classList.add('on');
    if(b.textContent.includes('Novos') && cond==='Novo') b.classList.add('on');
    if(b.textContent.includes('Todos') && cond==='Todos') b.classList.add('on');
  });
  // Swap banner
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
  // Swap contra-capa banner
  const bannerImg = document.getElementById('iphone-banner-img');
  if(bannerImg){
    if(v==='Novo') bannerImg.src = BANNER_NOVOS_CONTRA;
    else bannerImg.src = BANNER_SEMI_CONTRA;
  }
  renderIphone();
}

// Banner images
const BANNER_SEMI_CONTRA = "IMG_REMOVIDA";
const BANNER_NOVOS_CONTRA = "IMG_REMOVIDA";

function renderXiaomi(){
  const list=P.filter(x=>x.avail&&x.marca!=='Apple');
  document.getElementById('xiaomi-count').textContent=list.length;
  document.getElementById('xiaomi-grid').innerHTML=list.map((p,i)=>cardHTML(p,i)).join('');
}

function renderAcessorios(){
  let list = P.filter(x=>x.avail && x.marca==='AcessÃ³rio');
  document.getElementById('acess-grid').innerHTML = list.length
    ? list.map((p,i)=>cardHTML(p,i)).join('')
    : '<div style="grid-column:1/-1;text-align:center;padding:60px 20px;color:var(--gray)"><div style="font-size:48px;margin-bottom:12px">ðŸŽ§</div><div style="font-size:18px;font-weight:700">Nenhum acessÃ³rio cadastrado</div><div style="font-size:14px;margin-top:8px">Adicione acessÃ³rios pelo painel admin</div></div>';
}

// â•â•â• MODAL â•â•â•
function openModal(id){
  const p=P.find(x=>x.id===id); if(!p) return;
  const v=venda(p);
  const tags=[];
  if(p.cond==='Novo') tags.push('<span class="badge-new">âœ¨ NOVO</span>');
  else tags.push('<span class="badge-used">ðŸ“± SEMI-NOVO</span>');
  if(p.cpo==='Sim') tags.push('<span class="badge-cpo">CPO</span>');
  if(p.anatel==='Sim') tags.push('<span class="badge-anatel">ðŸ‡§ðŸ‡· ANATEL</span>');
  if(p.orig==='Americano') tags.push('<span style="background:#fff3e0;color:#e65100;font-size:10px;font-weight:800;padding:3px 10px;border-radius:20px">ðŸ‡ºðŸ‡¸ AMERICANO</span>');
  const batHTML = p.bat&&p.bat<100?`
    <div class="modal-spec-item"><div class="modal-spec-label">Bateria</div>
      <div class="modal-spec-val ${batCls(p.bat)}">${p.bat}%
        <div class="bat-bar" style="margin-top:6px"><div class="bat-fill ${batCls(p.bat)}" style="width:${p.bat}%"></div></div>
      </div>
    </div>` : '';
  document.getElementById('modal-box').innerHTML=`
    <div class="modal-img-wrap">
      <button class="modal-close" onclick="closeModal()">âœ•</button>
      ${getModalImg(p)}
    </div>
    <div class="modal-body">
      <div class="modal-brand">${p.marca}</div>
      <div class="modal-name">${p.modelo}</div>
      <div class="modal-tags">${tags.join('')}</div>
      <div class="modal-specs-grid">
        <div class="modal-spec-item"><div class="modal-spec-label">Capacidade</div><div class="modal-spec-val">${p.cap}</div></div>
        <div class="modal-spec-item"><div class="modal-spec-label">Cor</div><div class="modal-spec-val">${p.cor}</div></div>
        ${batHTML}
        ${p.obs?`<div class="modal-spec-item" style="grid-column:1/-1"><div class="modal-spec-label">ObservaÃ§Ã£o</div><div class="modal-spec-val" style="color:var(--pink);font-size:13px">${p.obs}</div></div>`:''}
      </div>
      <div class="modal-price-box">
        <div class="modal-price-label">PreÃ§o de Venda</div>
        <div class="modal-price-val">${brl(v)}</div>
        <div class="modal-price-note" style="font-size:13px;line-height:1.6">
          Ã  vista â€¢ sujeito Ã  disponibilidade<br>
          <span style="font-weight:800;color:#fff;background:rgba(255,255,255,.18);padding:3px 10px;border-radius:20px;display:inline-block;margin-top:2px">ðŸ“² Parcelado em atÃ© 18Ã— + taxa da mÃ¡quina</span>
        </div>
      </div>
      <button id="add-cart-btn-${p.id}" class="modal-add-cart" onclick="addToCart(${p.id})">
        ðŸ›’ Adicionar ao Carrinho
      </button>
      <div class="modal-ctas">
        <a class="modal-cta-whats" href="https://wa.me/5565996480119?text=OlÃ¡!%20Tenho%20interesse%20no%20${encodeURIComponent(p.modelo+' '+p.cap+' '+p.cor)}" target="_blank">
          ðŸ’¬ Comprar via WhatsApp
        </a>
        <a class="modal-cta-call" href="tel:5565996480119">ðŸ“ž</a>
      </div>
    </div>`;
  document.getElementById('modal-ov').classList.add('open');
}
function closeModal(){document.getElementById('modal-ov').classList.remove('open')}

// â•â•â• SEARCH â•â•â•
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
      <span class="search-result-icon">${p.marca==='Apple'?'ðŸ“±':'ðŸ¤–'}</span>
      <div><div class="search-result-name">${p.modelo} ${p.cap}</div>
      <div class="search-result-sub">${p.cor} â€¢ ${p.cond}</div></div>
      <span class="search-result-price">${brl(venda(p))}</span>
    </div>`).join('')
  :'<div style="padding:20px;text-align:center;color:var(--gray)">Nenhum produto encontrado ðŸ˜”</div>';
}
function closeSearch(){document.getElementById('search-ov').classList.remove('open')}
document.addEventListener('keydown',e=>{if(e.key==='Escape'){closeModal();closeSearch()}})

// â•â•â• ADMIN â•â•â•
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

// â•â•â• BANNER SWAP â•â•â•
function swapBanner(input, key, liveId){
  const file=input.files[0]; if(!file) return;
  const reader=new FileReader();
  reader.onload=e=>{
    const data=e.target.result;
    // Update preview in admin
    document.getElementById('prev-'+key).src=data;
    // Update live site if applicable
    if(liveId){
      const liveEl=document.getElementById(liveId);
      if(liveEl) liveEl.src=data;
    }
    // Update global banner vars
    if(key==='semi-capa'){ window.BANNER_SEMI_CAPA=data; }
    if(key==='semi-contra'){ window.BANNER_SEMI_CONTRA=data; 
      const bi=document.getElementById('iphone-banner-img');
      if(bi && ifFilter!=='Novo') bi.src=data; }
    if(key==='novos-capa'){ window.BANNER_NOVOS_CAPA=data; }
    if(key==='novos-contra'){ window.BANNER_NOVOS_CONTRA=data;
      const bi=document.getElementById('iphone-banner-img');
      if(bi && ifFilter==='Novo') bi.src=data; }
    // Save to localStorage
    const banners=JSON.parse(localStorage.getItem('mimo_banners')||'{}');
    banners[key]=data;
    localStorage.setItem('mimo_banners',JSON.stringify(banners));
    alert('âœ… Banner atualizado com sucesso!');
  };
  reader.readAsDataURL(file);
}

// â•â•â• CONFIG â•â•â•
function saveConfig(){
  const cfg={
    whats:document.getElementById('cfg-whats')?.value||'5565996480119',
    tel:document.getElementById('cfg-tel')?.value||'65 99648-0119',
    insta:document.getElementById('cfg-insta')?.value||'mimostore.cba',
    local:document.getElementById('cfg-local')?.value||'CuiabÃ¡ - MT',
  };
  localStorage.setItem('mimo_config',JSON.stringify(cfg));
}

function applyConfig(){
  saveConfig();
  alert('âœ… Dados de contato salvos! SerÃ£o aplicados na prÃ³xima visita.');
}

function applyGlobalMargin(){
  const mi_novo   = parseInt(document.getElementById('cfg-margin-iphone-novo')?.value)||20;
  const mi_semi   = parseInt(document.getElementById('cfg-margin-iphone-semi')?.value)||20;
  const mx_novo   = parseInt(document.getElementById('cfg-margin-xmi-novo')?.value)||20;
  const skip      = document.getElementById('cfg-skip-custom')?.checked;
  let count=0;
  P.forEach(p=>{
    if(skip && p.customMargin) return; // skip products with custom margin
    if(p.marca==='Apple'){
      p.margin = (p.cond==='Semi-novo') ? mi_semi : mi_novo;
    } else {
      p.margin = mx_novo;
    }
    count++;
  });
  saveP();renderAdminTbl();
  document.getElementById('margin-result').textContent=`âœ… Margem atualizada em ${count} produto(s)! ${skip?'(personalizados mantidos)':''}`;
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
      <td><span style="font-size:11px;font-weight:700;padding:3px 8px;border-radius:6px;background:${p.cond==='Novo'?'#dcfce7':'#fff3e0'};color:${p.cond==='Novo'?'#16a34a':'#b45309'}">${p.cond}</span></td>
      <td><strong>${p.modelo}</strong></td>
      <td>${p.cap}</td>
      <td>${p.cor}</td>
      <td>${p.orig}</td>
      <td class="${batCls(p.bat)}">${p.bat?p.bat+'%':'â€”'}</td>
      <td class="tbl-custo">${brl(p.custo)}</td>
      <td>${p.margin}%</td>
      <td class="tbl-price">${brl(venda(p))}</td>
      <td><span class="tbl-avail ${p.avail?'yes':'no'}">${p.avail?'âœ… Sim':'âŒ NÃ£o'}</span></td>
      <td style="max-width:100px;overflow:hidden;text-overflow:ellipsis;font-size:11px;color:var(--gray)">${p.obs||'â€”'}</td>
      <td><div class="tbl-actions">
        <button class="tbl-btn tbl-edit" onclick="editP(${p.id})">âœï¸</button>
        <button class="tbl-btn tbl-toggle" onclick="toggleAvail(${p.id})">${p.avail?'ðŸ‘ï¸':'ðŸ™ˆ'}</button>
        <button class="tbl-btn tbl-del" onclick="delP(${p.id})">ðŸ—‘ï¸</button>
      </div></td>
    </tr>`).join('');
}

function editP(id){
  const p=P.find(x=>x.id===id); if(!p) return;
  // populate modal
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
  if(!confirm('Remover este produto do catÃ¡logo?')) return;
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
  const nota=manual>0?'<div style="font-size:11px;color:var(--green);margin-top:2px">âœ… PreÃ§o manual</div>':'';
  if(prev) prev.innerHTML=(c||manual)?`<div class="label">PreÃ§o de Venda</div><div class="value">${brl(v)}</div>${nota}<div style="font-size:12px;color:var(--gray);margin-top:4px">${m2}</div>`:`<div class="label">PreÃ§o de Venda</div><div class="value">â€”</div>`;
}

function addProd(){
  const g=id=>document.getElementById(id)?.value?.trim()||'';
  const modelo=g('f-modelo'), custo=parseInt(g('f-custo'));
  if(!modelo||!custo){alert('Preencha pelo menos o Modelo e o Custo.');return}
  const vendaManual=parseFloat(g('f-venda-manual'))||0;
  const np={
    id:nxtId++,forn:g('f-forn'),marca:g('f-marca'),cond:g('f-cond'),
    modelo,cap:g('f-cap')||'â€”',cor:g('f-cor')||'â€”',orig:g('f-orig'),
    bat:parseInt(g('f-bat'))||null,custo,margin:parseInt(g('f-margin'))||20,
    vendaManual:vendaManual||null,img:g('f-img'),obs:g('f-obs'),avail:true
  };
  P.push(np);saveP();
  alert(`âœ… "${modelo}" adicionado!\nPreÃ§o de venda: ${brl(venda(np))}`);
  aTab('consulta',document.querySelectorAll('.admin-tab-btn')[0]);
  renderAdminTbl();renderStats();
  // redirect to correct section
  if(np.marca==='AcessÃ³rio') renderAcessorios();
  else if(np.marca==='Apple') renderIphone();
  else renderXiaomi();
}

// â•â•â• IMPORT CSV â•â•â•
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
        modelo,cap:cap||'â€”',cor:cor||'â€”',orig:orig||'Nacional',
        bat:parseInt(bat)||null,custo:parseInt(custo),
        margin:parseInt(margin)||20,cpo:'NÃ£o',anatel:orig==='ANATEL'?'Sim':'NÃ£o',
        img:'',obs:obs||'',avail:true
      });
      added++;
    });
    saveP();renderAdminTbl();renderStats();
    document.getElementById('import-result').innerHTML=
      `<div style="background:${added?'#dcfce7':'#fee2e2'};color:${added?'#16a34a':'#dc2626'};padding:14px;border-radius:10px;font-weight:700">
        ${added?'âœ…':'âŒ'} ${added} produto(s) importado(s)${errors?' â€¢ '+errors+' linha(s) com erro':''}</div>`;
  };
  reader.readAsText(file,'UTF-8');
}

function renderStats(){
  const sb=document.getElementById('stats-boxes'); if(!sb) return;
  const tot=P.length, avail=P.filter(x=>x.avail).length;
  const apple=P.filter(x=>x.marca==='Apple').length;
  const xmi=P.filter(x=>x.marca!=='Apple').length;
  const novos=P.filter(x=>x.cond==='Novo').length;
  const semi=P.filter(x=>x.cond==='Semi-novo').length;
  sb.innerHTML=[
    ['ðŸ“¦',tot,'Total cadastrado'],['âœ…',avail,'DisponÃ­veis'],
    ['ðŸ',apple,'iPhones'],['ðŸ¤–',xmi,'Androids'],
    ['âœ¨',novos,'Novos'],['ðŸ“±',semi,'Semi-novos'],
  ].map(([ic,v,l])=>`<div class="stat-box"><div class="stat-val">${ic} ${v}</div><div class="stat-lbl">${l}</div></div>`).join('');
}

// â•â•â• IMAGE UPLOAD â•â•â•
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

// â•â•â• INIT â•â•â•
window.addEventListener('DOMContentLoaded',()=>{ 
  showPage('home');
  carregarDoBanco();
});
</script>

<!-- â•â•â• EDIT PRODUCT MODAL â•â•â• -->
<div id="edit-prod-modal" style="display:none;position:fixed;inset:0;background:rgba(0,0,0,.55);z-index:1000;align-items:center;justify-content:center;padding:16px;backdrop-filter:blur(4px)">
  <div style="background:#fff;border-radius:24px;width:100%;max-width:480px;max-height:90vh;overflow-y:auto;box-shadow:0 24px 80px rgba(233,30,140,.25)">
    <div style="background:linear-gradient(135deg,var(--pink),#c4158c);padding:20px 24px;border-radius:24px 24px 0 0;display:flex;align-items:center;justify-content:space-between">
      <div>
        <div style="color:rgba(255,255,255,.8);font-size:11px;font-weight:700;letter-spacing:1px;text-transform:uppercase">Editando produto</div>
        <div id="ep-title" style="color:#fff;font-family:'Playfair Display',serif;font-size:20px;font-weight:900;margin-top:2px"></div>
      </div>
      <button onclick="epClose()" style="background:rgba(255,255,255,.2);border:none;color:#fff;width:34px;height:34px;border-radius:50%;font-size:18px;cursor:pointer;display:flex;align-items:center;justify-content:center">âœ•</button>
    </div>
    <div style="padding:24px;display:flex;flex-direction:column;gap:16px">
      <input type="hidden" id="ep-id">
      <input type="hidden" id="ep-img-data">

      <!-- Image -->
      <div>
        <label style="font-size:12px;font-weight:700;color:var(--gray);text-transform:uppercase;letter-spacing:.5px;display:block;margin-bottom:8px">ðŸ–¼ï¸ Imagem do Produto</label>
        <img id="ep-img-preview" style="max-height:120px;border-radius:12px;border:2px solid var(--pink-pale);display:none;margin-bottom:8px;object-fit:contain;background:var(--pink-ultra);padding:8px" alt="">
        <div style="display:flex;gap:8px;flex-wrap:wrap">
          <label style="background:var(--pink);color:#fff;padding:8px 16px;border-radius:10px;cursor:pointer;font-size:13px;font-weight:700;display:flex;align-items:center;gap:6px">
            ðŸ“ Trocar imagem
            <input type="file" accept="image/*" style="display:none" onchange="epLoadImg(this)">
          </label>
          <button onclick="epRemoveImg()" style="background:var(--gray-light);color:var(--gray);border:none;padding:8px 16px;border-radius:10px;cursor:pointer;font-size:13px;font-weight:700">ðŸ—‘ï¸ Remover</button>
        </div>
      </div>

      <!-- Custo + Margem -->
      <div style="display:grid;grid-template-columns:1fr 1fr;gap:12px">
        <div>
          <label style="font-size:12px;font-weight:700;color:var(--gray);text-transform:uppercase;letter-spacing:.5px;display:block;margin-bottom:6px">ðŸ’° PreÃ§o de Custo (R$)</label>
          <input id="ep-custo" type="number" oninput="epCalcVenda()" style="width:100%;padding:10px 14px;border:2px solid var(--pink-pale);border-radius:10px;font-size:15px;font-weight:700;outline:none;font-family:'Nunito',sans-serif">
        </div>
        <div>
          <label style="font-size:12px;font-weight:700;color:var(--gray);text-transform:uppercase;letter-spacing:.5px;display:block;margin-bottom:6px">ðŸ“ˆ Margem de Lucro (%)</label>
          <input id="ep-margin" type="number" oninput="epCalcVenda()" style="width:100%;padding:10px 14px;border:2px solid var(--pink-pale);border-radius:10px;font-size:15px;font-weight:700;outline:none;font-family:'Nunito',sans-serif">
        </div>
      </div>

      <!-- Venda preview -->
      <div style="background:linear-gradient(135deg,var(--pink-ultra),var(--pink-pale));border-radius:12px;padding:14px;display:flex;align-items:center;justify-content:space-between">
        <span style="font-size:13px;font-weight:700;color:var(--gray)">PreÃ§o de Venda:</span>
        <span id="ep-venda-prev" style="font-family:'Playfair Display',serif;font-size:22px;font-weight:900;color:var(--pink)"></span>
      </div>

      <!-- Custom margin lock -->
      <label style="display:flex;align-items:center;gap:10px;cursor:pointer;background:var(--pink-ultra);padding:12px;border-radius:10px;border:1.5px solid var(--pink-pale)">
        <input type="checkbox" id="ep-custom-margin" style="width:16px;height:16px;accent-color:var(--pink)">
        <div>
          <div style="font-size:13px;font-weight:700;color:var(--dark)">ðŸ”’ Margem personalizada</div>
          <div style="font-size:11px;color:var(--gray);margin-top:2px">Marque para proteger este produto da alteraÃ§Ã£o de margem global</div>
        </div>
      </label>

      <!-- Obs -->
      <div>
        <label style="font-size:12px;font-weight:700;color:var(--gray);text-transform:uppercase;letter-spacing:.5px;display:block;margin-bottom:6px">ðŸ“ ObservaÃ§Ã£o</label>
        <input id="ep-obs" type="text" placeholder="Ex: ANATEL, CPO, Bateria 100%..." style="width:100%;padding:10px 14px;border:2px solid var(--pink-pale);border-radius:10px;font-size:14px;outline:none;font-family:'Nunito',sans-serif">
      </div>

      <!-- DisponÃ­vel -->
      <label style="display:flex;align-items:center;gap:10px;cursor:pointer">
        <input type="checkbox" id="ep-avail" style="width:18px;height:18px;accent-color:var(--pink)">
        <span style="font-size:14px;font-weight:700">âœ… DisponÃ­vel no catÃ¡logo</span>
      </label>

      <!-- Save -->
      <button onclick="epSave()" style="background:linear-gradient(135deg,var(--pink),#c4158c);color:#fff;border:none;padding:14px;border-radius:12px;font-size:15px;font-weight:800;cursor:pointer;font-family:'Nunito',sans-serif;width:100%;transition:.2s">
        ðŸ’¾ Salvar AlteraÃ§Ãµes
      </button>
    </div>
  </div>
</div>

<!-- MOBILE MENU -->
<div class="mobile-menu" id="mobile-menu" onclick="if(event.target===this)closeMobileMenu()">
  <div class="mobile-menu-panel">
    <div class="mobile-menu-header">
      <span style="font-family:'Playfair Display',serif;font-size:18px;font-weight:900;color:var(--pink)">Mimo Store</span>
      <button class="mobile-close" onclick="closeMobileMenu()">âœ•</button>
    </div>
    <button class="mobile-nav-link" onclick="mobileNav('home')">ðŸ  InÃ­cio</button>
    <button class="mobile-nav-link" onclick="mobileNav('iphone')">ðŸ“± iPhones</button>
    <button class="mobile-nav-link" onclick="mobileNav('xiaomi')">ðŸ¤– Xiaomi</button>
    <button class="mobile-nav-link" onclick="mobileNav('acessorios')">ðŸŽ§ AcessÃ³rios</button>
    <button class="mobile-nav-link" onclick="mobileNav('carrinho')">ðŸ›’ Carrinho</button>
    <button class="mobile-nav-link" onclick="mobileNav('quem')">ðŸ’— Quem somos</button>
    <button class="mobile-nav-link" onclick="mobileNav('contato')">ðŸ“ž Contato</button>
    <a href="https://wa.me/5565996480119" target="_blank" style="display:flex;align-items:center;gap:12px;margin-top:auto;background:#25d366;color:#fff;padding:14px 20px;border-radius:16px;font-weight:800;font-size:15px;text-decoration:none">
      <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z"/></svg>
      Falar no WhatsApp
    </a>
  </div>
</div>

<!-- FLOATING WHATSAPP -->
<a href="https://wa.me/5565996480119" class="wa-float" target="_blank" title="Falar no WhatsApp">
  <svg width="28" height="28" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347zM12 0C5.373 0 0 5.373 0 12s5.373 12 12 12 12-5.373 12-12S18.627 0 12 0zm.029 18.88a7.945 7.945 0 01-3.794-.965L4.5 19.5l1.613-3.682A7.943 7.943 0 014 12.029C4 7.601 7.601 4 12.029 4S20 7.601 20 12.029c0 4.398-3.571 7.999-7.971 8.851z"/></svg>
</a>
</body>
</html>
