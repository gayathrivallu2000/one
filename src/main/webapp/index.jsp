<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#6c4df6">
<title>NexusShop — Colorful Modern E‑Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" crossorigin="anonymous">

<style>
/* =========================================================
   NEXUSSHOP — COMPLETE UI REDESIGN
   ========================================================= */
:root{
  --bg:#f7f8fc;
  --surface:#ffffff;
  --surface-2:#f0f1f8;
  --text:#18172b;
  --muted:#727287;
  --primary:#6c4df6;
  --primary-2:#8a63ff;
  --pink:#f24c8b;
  --orange:#ff9d42;
  --cyan:#24c8d8;
  --green:#20b486;
  --yellow:#ffd166;
  --danger:#ef476f;
  --border:rgba(24,23,43,.08);
  --shadow:0 12px 35px rgba(42,35,92,.08);
  --shadow-lg:0 24px 65px rgba(42,35,92,.15);
  --radius:22px;
  --radius-sm:14px;
  --container:1240px;
  --ease:.25s cubic-bezier(.2,.8,.2,1);
}

*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth;scroll-padding-top:110px}
body{
  font-family:Inter,system-ui,sans-serif;
  background:
    radial-gradient(circle at 5% 5%,rgba(108,77,246,.06),transparent 25rem),
    radial-gradient(circle at 95% 35%,rgba(242,76,139,.055),transparent 24rem),
    var(--bg);
  color:var(--text);
  line-height:1.55;
  -webkit-font-smoothing:antialiased;
}
body.no-scroll{overflow:hidden}
a{color:inherit;text-decoration:none}
button,input{font:inherit}
button{border:0;cursor:pointer;color:inherit}
img{display:block;max-width:100%}
.container{width:min(100% - 36px,var(--container));margin:auto}
.muted{color:var(--muted)}
.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border:0}

/* TOP BAR */
.topbar{
  background:#17152b;color:#fff;font-size:12px;
}
.topbar-inner{
  min-height:34px;display:flex;align-items:center;justify-content:space-between;gap:16px;
}
.topbar strong{color:#ffd166}
.top-links{display:flex;gap:18px;opacity:.85}
.top-links a:hover{opacity:1;color:#fff}

/* HEADER */
header{
  position:sticky;top:0;z-index:1000;
  background:rgba(255,255,255,.88);
  backdrop-filter:blur(20px);
  border-bottom:1px solid var(--border);
}
.header-inner{
  min-height:76px;display:grid;grid-template-columns:auto 1fr auto;align-items:center;gap:28px;
}
.brand{
  display:flex;align-items:center;gap:10px;
  font-family:"Plus Jakarta Sans",Inter,sans-serif;
  font-size:21px;font-weight:800;letter-spacing:-.7px;
}
.brand-mark{
  width:40px;height:40px;border-radius:13px;display:grid;place-items:center;color:#fff;
  background:linear-gradient(135deg,var(--primary),var(--pink));
  box-shadow:0 9px 22px rgba(108,77,246,.28);
}
.brand .accent{color:var(--primary)}

.main-nav ul{display:flex;justify-content:center;align-items:center;gap:5px;list-style:none}
.main-nav a{
  display:flex;align-items:center;gap:7px;padding:10px 13px;border-radius:11px;
  color:var(--muted);font-size:13px;font-weight:600;transition:var(--ease);
}
.main-nav a:hover,.main-nav a.active{background:#f0edff;color:var(--primary)}
.main-nav a i{font-size:12px}

.header-right{display:flex;align-items:center;gap:8px}
.search-wrap{
  width:245px;height:42px;display:flex;align-items:center;
  background:var(--surface-2);border:1px solid transparent;border-radius:13px;padding:0 13px;
  transition:var(--ease);
}
.search-wrap:focus-within{
  background:#fff;border-color:rgba(108,77,246,.3);
  box-shadow:0 0 0 4px rgba(108,77,246,.08);
}
.search-wrap i{color:#9897aa;font-size:14px}
.search-wrap input{
  width:100%;border:0;outline:0;background:transparent;padding:0 9px;color:var(--text);font-size:13px;
}
.search-wrap input::placeholder{color:#a3a2b2}
.icon-btn{
  position:relative;width:42px;height:42px;border-radius:13px;display:grid;place-items:center;
  background:transparent;color:#666579;transition:var(--ease);
}
.icon-btn:hover{background:#f0edff;color:var(--primary);transform:translateY(-1px)}
.cart-count{
  position:absolute;top:-2px;right:-2px;min-width:19px;height:19px;padding:0 5px;
  border-radius:999px;background:var(--pink);color:#fff;border:2px solid #fff;
  display:grid;place-items:center;font-size:10px;font-weight:800;transition:.2s;
}
.mobile-toggle{display:none}

/* MOBILE NAV */
#mobileMenu{
  display:none;background:#fff;border-top:1px solid var(--border);
  box-shadow:0 15px 30px rgba(0,0,0,.06);
}
#mobileMenu ul{list-style:none;padding:10px 0 16px}
#mobileMenu a{display:flex;gap:12px;padding:12px;border-radius:11px;font-weight:600;color:#4d4c60}
#mobileMenu a:hover{background:#f0edff;color:var(--primary)}

/* HERO */
.hero{padding:30px 0 10px}
.hero-card{
  position:relative;overflow:hidden;min-height:475px;border-radius:30px;
  background:linear-gradient(120deg,#221b50 0%,#5338bc 52%,#8d3e9e 100%);
  box-shadow:var(--shadow-lg);
}
.hero-card:before,.hero-card:after{
  content:"";position:absolute;border-radius:50%;pointer-events:none;
}
.hero-card:before{
  width:460px;height:460px;right:-100px;top:-150px;
  background:rgba(255,255,255,.12);filter:blur(2px);
}
.hero-card:after{
  width:330px;height:330px;left:43%;bottom:-250px;background:rgba(36,200,216,.18);
}
.hero-content{
  position:relative;z-index:2;width:55%;padding:62px 58px;color:#fff;
}
.hero-kicker{
  display:inline-flex;align-items:center;gap:8px;padding:7px 12px;border-radius:999px;
  background:rgba(255,255,255,.13);border:1px solid rgba(255,255,255,.16);
  font-size:12px;font-weight:700;margin-bottom:18px;
}
.hero-kicker i{color:#ffd166}
.hero h1{
  font-family:"Plus Jakarta Sans",Inter,sans-serif;
  font-size:52px;line-height:1.08;letter-spacing:-2.4px;margin-bottom:17px;
}
.hero h1 span{
  color:#ffd166;
}
.hero p{max-width:570px;color:rgba(255,255,255,.78);font-size:16px;margin-bottom:28px}
.hero-actions{display:flex;gap:11px;flex-wrap:wrap}
.btn{
  min-height:46px;padding:0 20px;border-radius:13px;display:inline-flex;align-items:center;justify-content:center;
  gap:9px;font-weight:700;font-size:13px;transition:var(--ease);
}
.btn-primary{background:#fff;color:#5034c3;box-shadow:0 12px 25px rgba(0,0,0,.13)}
.btn-primary:hover{transform:translateY(-2px);box-shadow:0 16px 30px rgba(0,0,0,.2)}
.btn-gradient{background:linear-gradient(135deg,var(--primary),var(--pink));color:#fff}
.btn-gradient:hover{transform:translateY(-2px);box-shadow:0 12px 25px rgba(108,77,246,.25)}
.btn-light{background:#f0edff;color:var(--primary)}
.btn-light:hover{background:#e5e0ff}
.btn-ghost-white{background:rgba(255,255,255,.1);border:1px solid rgba(255,255,255,.25);color:#fff}
.btn-ghost-white:hover{background:rgba(255,255,255,.18)}
.hero-visual{
  position:absolute;z-index:1;right:30px;top:25px;width:43%;height:calc(100% - 50px);
  display:flex;align-items:center;justify-content:center;
}
.hero-product{
  width:min(390px,90%);aspect-ratio:1/1;border-radius:30px;overflow:hidden;
  transform:rotate(3deg);box-shadow:0 30px 65px rgba(0,0,0,.3);
  border:8px solid rgba(255,255,255,.16);
}
.hero-product img{width:100%;height:100%;object-fit:cover}
.floating-badge{
  position:absolute;background:#fff;color:var(--text);border-radius:16px;padding:11px 14px;
  box-shadow:0 15px 30px rgba(0,0,0,.2);font-size:12px;font-weight:800;
}
.badge-one{right:4%;top:17%}.badge-two{left:3%;bottom:18%}
.floating-badge small{display:block;color:var(--muted);font-size:10px;font-weight:500;margin-top:2px}

/* TRUST STRIP */
.trust-strip{
  display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin:24px 0 8px;
}
.trust-item{
  background:#fff;border:1px solid var(--border);border-radius:16px;padding:15px 17px;
  display:flex;align-items:center;gap:12px;box-shadow:0 6px 20px rgba(42,35,92,.045);
}
.trust-icon{
  width:39px;height:39px;border-radius:12px;display:grid;place-items:center;flex:none;
  background:#f0edff;color:var(--primary);
}
.trust-item:nth-child(2) .trust-icon{background:#e8fbf6;color:var(--green)}
.trust-item:nth-child(3) .trust-icon{background:#fff3e7;color:var(--orange)}
.trust-item:nth-child(4) .trust-icon{background:#ffeaf1;color:var(--pink)}
.trust-item strong{display:block;font-size:12px}.trust-item span{font-size:11px;color:var(--muted)}

/* SECTIONS */
.section{padding:58px 0 8px}
.section-header{
  display:flex;align-items:flex-end;justify-content:space-between;gap:20px;margin-bottom:22px;
}
.title-group .eyebrow{
  display:block;color:var(--primary);font-size:11px;font-weight:800;letter-spacing:1px;text-transform:uppercase;margin-bottom:5px;
}
.title-group h2{
  font-family:"Plus Jakarta Sans",Inter,sans-serif;font-size:28px;letter-spacing:-1px;line-height:1.2;
}
.title-group p{color:var(--muted);font-size:13px;margin-top:5px}
.view-all{color:var(--primary);font-size:13px;font-weight:700;display:flex;gap:7px;align-items:center}
.view-all:hover{gap:11px}

/* CATEGORIES */
.categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}
.cat-card{
  position:relative;background:#fff;border:1px solid var(--border);border-radius:18px;padding:20px 12px;
  text-align:center;cursor:pointer;overflow:hidden;transition:var(--ease);
}
.cat-card:after{
  content:"";position:absolute;width:80px;height:80px;border-radius:50%;right:-35px;bottom:-40px;
  background:#f0edff;transition:var(--ease);
}
.cat-card:hover{transform:translateY(-5px);border-color:rgba(108,77,246,.22);box-shadow:var(--shadow)}
.cat-card:hover:after{transform:scale(2)}
.icon-wrap{
  position:relative;z-index:1;width:54px;height:54px;margin:0 auto 11px;border-radius:16px;
  display:grid;place-items:center;font-size:21px;color:var(--primary);background:#f0edff;
}
.cat-card:nth-child(2) .icon-wrap{background:#e8fbf6;color:var(--green)}
.cat-card:nth-child(3) .icon-wrap{background:#ffeaf1;color:var(--pink)}
.cat-card:nth-child(4) .icon-wrap{background:#fff3e7;color:var(--orange)}
.cat-card:nth-child(5) .icon-wrap{background:#e8f8ff;color:#149bb0}
.cat-card:nth-child(6) .icon-wrap{background:#fff6cf;color:#bd8a00}
.cat-card h4{position:relative;z-index:1;font-size:13px}
.cat-card .count{position:relative;z-index:1;color:var(--muted);font-size:11px;margin-top:3px}

/* PRODUCT TOOLBAR */
.product-toolbar{
  display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:18px;
}
.filter-pills{display:flex;gap:7px;flex-wrap:wrap}
.filter-pill{
  padding:8px 12px;border-radius:999px;background:#fff;border:1px solid var(--border);
  font-size:11px;font-weight:700;color:var(--muted);transition:var(--ease);
}
.filter-pill:hover,.filter-pill.active{background:#f0edff;color:var(--primary);border-color:#ddd6ff}
.result-count{font-size:12px;color:var(--muted)}

/* PRODUCTS */
.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:17px}
.product-card{
  position:relative;background:#fff;border:1px solid var(--border);border-radius:20px;overflow:hidden;
  display:flex;flex-direction:column;transition:var(--ease);
}
.product-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-lg);border-color:rgba(108,77,246,.16)}
.product-card .img-wrap{position:relative;aspect-ratio:1/1;background:#f1f2f8;overflow:hidden}
.product-card .img-wrap:after{
  content:"";position:absolute;inset:0;background:linear-gradient(180deg,transparent 65%,rgba(0,0,0,.08));pointer-events:none;
}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:.45s}
.product-card:hover .img-wrap img{transform:scale(1.07)}
.product-card .badge{
  position:absolute;z-index:2;left:12px;top:12px;padding:5px 9px;border-radius:8px;
  background:var(--primary);color:#fff;font-size:10px;font-weight:800;
}
.product-card .badge.sale{background:var(--pink)}
.wish-btn{
  position:absolute;z-index:3;right:11px;top:11px;width:35px;height:35px;border-radius:11px;
  background:rgba(255,255,255,.92);color:#77768a;display:grid;place-items:center;
  box-shadow:0 7px 18px rgba(0,0,0,.1);transition:var(--ease);
}
.wish-btn:hover,.wish-btn.liked{color:var(--pink);transform:scale(1.08);background:#fff0f5}
.product-card .body{padding:15px 16px 9px;display:flex;flex-direction:column;gap:6px;flex:1}
.category-tag{font-size:10px;color:#9998a9;text-transform:uppercase;letter-spacing:.8px;font-weight:800}
.product-card h5{font-size:14px;line-height:1.35;min-height:38px}
.price-row{display:flex;align-items:center;gap:8px;margin-top:2px}
.price{font-size:18px;font-weight:800;color:var(--text)}
.old-price{font-size:12px;color:#a8a7b4;text-decoration:line-through}
.rating{font-size:11px;color:#f4aa23;letter-spacing:1px}
.rating span{color:#9291a2;letter-spacing:0;margin-left:3px}
.product-card .footer{padding:5px 16px 16px;display:flex;gap:8px}
.add-btn{
  width:100%;height:39px;border-radius:11px;background:#f0edff;color:var(--primary);
  font-size:12px;font-weight:800;transition:var(--ease);
}
.add-btn:hover{background:var(--primary);color:#fff;transform:translateY(-1px)}
.add-btn.added{background:var(--green);color:#fff}

/* DEAL */
.deal-wrap{
  display:grid;grid-template-columns:1fr 1fr;min-height:390px;overflow:hidden;border-radius:25px;
  background:#fff;border:1px solid var(--border);box-shadow:var(--shadow);
}
.deal-img{position:relative;min-height:390px;overflow:hidden;background:#eee}
.deal-img img{width:100%;height:100%;object-fit:cover;transition:.5s}
.deal-wrap:hover .deal-img img{transform:scale(1.04)}
.deal-img:after{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(0,0,0,.03),rgba(0,0,0,.2))}
.deal-content{
  padding:42px;display:flex;flex-direction:column;justify-content:center;
  background:
    radial-gradient(circle at 90% 15%,rgba(242,76,139,.09),transparent 11rem),
    #fff;
}
.deal-tag{
  align-self:flex-start;background:#fff1d9;color:#c5770c;border-radius:999px;padding:6px 11px;
  font-size:10px;font-weight:800;text-transform:uppercase;letter-spacing:.7px;margin-bottom:12px;
}
.deal-content h3{font-family:"Plus Jakarta Sans",Inter,sans-serif;font-size:30px;letter-spacing:-1.2px}
.deal-content .desc{color:var(--muted);font-size:13px;max-width:440px;margin:7px 0 15px}
.price-big{font-size:34px;font-weight:800}
.price-big .old{font-size:17px;color:#aaa;text-decoration:line-through;font-weight:500;margin-left:8px}
.stock{font-size:12px;color:var(--muted);margin:3px 0 14px}.stock strong{color:var(--pink)}
.timer-grid{display:flex;gap:8px;margin:4px 0 20px}
.timer-box{
  min-width:62px;padding:9px 10px;border-radius:12px;text-align:center;
  background:#19162f;color:#fff;
}
.timer-box .num{font-size:20px;font-weight:800;line-height:1.15}
.timer-box .label{font-size:8px;color:rgba(255,255,255,.58);text-transform:uppercase;letter-spacing:.7px}
.deal-content .btn{align-self:flex-start}

/* TESTIMONIALS */
.testimonials-scroll{
  display:grid;grid-template-columns:repeat(4,1fr);gap:14px;overflow:visible;padding:4px 1px 12px;
}
.testimonial-card{
  background:#fff;border:1px solid var(--border);border-radius:19px;padding:20px;box-shadow:0 7px 22px rgba(42,35,92,.04);
  transition:var(--ease);
}
.testimonial-card:hover{transform:translateY(-4px);box-shadow:var(--shadow)}
.stars{color:#f3ad2d;font-size:13px;letter-spacing:2px;margin-bottom:11px}
.testimonial-card blockquote{font-size:13px;line-height:1.65;margin-bottom:16px;color:#4f4e61}
.author{display:flex;align-items:center;gap:10px}
.avatar{width:38px;height:38px;border-radius:50%;object-fit:cover}
.name{font-size:12px;font-weight:800}.role{font-size:10px;color:var(--muted)}

/* NEWSLETTER */
.newsletter-wrap{
  position:relative;overflow:hidden;border-radius:24px;padding:38px 42px;color:#fff;
  display:flex;align-items:center;justify-content:space-between;gap:30px;
  background:linear-gradient(120deg,#211b4d,#6141d5 65%,#9c3d91);
  box-shadow:var(--shadow);
}
.newsletter-wrap:after{
  content:"";position:absolute;width:260px;height:260px;border-radius:50%;right:-70px;top:-150px;background:rgba(255,255,255,.11)
}
.newsletter-wrap .text{position:relative;z-index:1}
.newsletter-wrap h3{font-family:"Plus Jakarta Sans";font-size:25px}
.newsletter-wrap p{font-size:12px;color:rgba(255,255,255,.7);margin-top:4px}
.newsletter-form{position:relative;z-index:2;display:flex;gap:8px;width:min(100%,480px)}
.newsletter-form input{
  flex:1;min-width:0;border:1px solid rgba(255,255,255,.18);outline:0;
  background:rgba(255,255,255,.12);color:#fff;border-radius:12px;padding:0 15px;height:45px;font-size:12px;
}
.newsletter-form input::placeholder{color:rgba(255,255,255,.55)}
.newsletter-form input:focus{background:rgba(255,255,255,.18);border-color:rgba(255,255,255,.45)}
.newsletter-form .btn{height:45px;white-space:nowrap;background:#fff;color:#5337c4}
#newsletterMsg{position:absolute;top:51px;left:3px;font-size:11px}

/* FOOTER */
footer{margin-top:54px;background:#17152b;color:#fff;padding:48px 0 22px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:45px;padding-bottom:35px}
.footer-brand .brand{margin-bottom:11px}.footer-brand .brand .accent{color:#9c82ff}
.footer-brand p{max-width:310px;color:rgba(255,255,255,.55);font-size:12px;line-height:1.7}
.socials{display:flex;gap:8px;margin-top:17px}
.socials a{width:35px;height:35px;border-radius:10px;background:rgba(255,255,255,.07);display:grid;place-items:center;color:#aaa9ba;transition:var(--ease)}
.socials a:hover{background:var(--primary);color:#fff;transform:translateY(-2px)}
.footer-col h5{font-size:12px;margin-bottom:12px}
.footer-col ul{list-style:none;display:flex;flex-direction:column;gap:7px}
.footer-col a{font-size:11px;color:rgba(255,255,255,.55);transition:var(--ease)}
.footer-col a:hover{color:#fff}
.footer-bottom{border-top:1px solid rgba(255,255,255,.08);padding-top:18px;color:rgba(255,255,255,.38);font-size:10px;text-align:center}

/* TOAST */
.toast{
  position:fixed;z-index:2000;right:22px;bottom:22px;max-width:330px;
  background:#19162f;color:#fff;border:1px solid rgba(255,255,255,.08);border-radius:14px;
  padding:13px 15px;display:flex;align-items:center;gap:10px;
  box-shadow:0 20px 45px rgba(0,0,0,.22);transform:translateY(25px);opacity:0;pointer-events:none;
  transition:.3s;
}
.toast.show{transform:translateY(0);opacity:1}
.toast i{color:#6ee7c2}.toast strong{font-size:12px}.toast span{font-size:11px;color:#aaa9ba}

/* RESPONSIVE */
@media(max-width:1100px){
  .header-inner{grid-template-columns:auto 1fr auto;gap:15px}
  .search-wrap{width:190px}
  .hero-content{width:60%;padding:50px}
  .hero h1{font-size:43px}
  .hero-visual{width:43%;right:10px}
  .products-grid{grid-template-columns:repeat(3,1fr)}
  .categories-grid{grid-template-columns:repeat(3,1fr)}
  .testimonials-scroll{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:850px){
  .top-links{display:none}
  .header-inner{grid-template-columns:auto 1fr auto}
  .main-nav{display:none}
  .mobile-toggle{display:grid}
  .header-right .search-wrap{width:min(40vw,220px)}
  .hero-card{min-height:610px}
  .hero-content{width:100%;padding:42px 35px}
  .hero h1{font-size:42px;max-width:600px}
  .hero-visual{width:54%;height:300px;right:12px;bottom:15px;top:auto}
  .hero-product{width:260px}
  .badge-one{right:0;top:5%}.badge-two{left:0;bottom:7%}
  .trust-strip{grid-template-columns:repeat(2,1fr)}
  .deal-wrap{grid-template-columns:1fr}
  .deal-img{min-height:300px}
}
@media(max-width:650px){
  .container{width:min(100% - 24px,var(--container))}
  .topbar-inner{justify-content:center}
  .header-inner{min-height:65px;gap:7px}
  .brand{font-size:17px}
  .brand-mark{width:35px;height:35px;border-radius:11px}
  .header-right{gap:2px}
  .header-right .search-wrap{width:42px;height:40px;padding:0 12px}
  .header-right .search-wrap input{display:none}
  .header-right .search-wrap button{margin-left:auto}
  .header-right .icon-btn{width:38px;height:38px}
  .hero{padding-top:14px}
  .hero-card{min-height:650px;border-radius:23px}
  .hero-content{padding:32px 23px}
  .hero h1{font-size:33px;letter-spacing:-1.5px}
  .hero p{font-size:13px}
  .hero-visual{width:100%;right:0;height:310px}
  .hero-product{width:245px}
  .floating-badge{font-size:10px}
  .trust-strip{grid-template-columns:1fr 1fr;gap:8px}
  .trust-item{padding:11px 9px;gap:8px}
  .trust-icon{width:34px;height:34px}
  .trust-item strong{font-size:10px}.trust-item span{font-size:9px}
  .section{padding-top:43px}
  .section-header{align-items:flex-start}
  .title-group h2{font-size:23px}
  .categories-grid{grid-template-columns:repeat(2,1fr);gap:9px}
  .cat-card{padding:16px 8px}
  .products-grid{grid-template-columns:repeat(2,1fr);gap:10px}
  .product-card{border-radius:16px}
  .product-card .body{padding:12px 11px 7px}
  .product-card h5{font-size:12px;min-height:33px}
  .price{font-size:15px}.old-price{font-size:10px}
  .product-card .footer{padding:4px 11px 11px}
  .add-btn{height:36px;font-size:10px}
  .product-toolbar{align-items:flex-start;flex-direction:column}
  .deal-content{padding:28px 22px}
  .deal-content h3{font-size:24px}
  .deal-img{min-height:235px}
  .timer-box{min-width:53px}.timer-box .num{font-size:17px}
  .testimonials-scroll{display:flex;overflow-x:auto;scroll-snap-type:x mandatory}
  .testimonial-card{min-width:285px;scroll-snap-align:start}
  .newsletter-wrap{padding:28px 20px;align-items:flex-start;flex-direction:column}
  .newsletter-form{width:100%}
  .newsletter-form .btn{padding:0 13px}
  .footer-grid{grid-template-columns:1fr 1fr;gap:25px}
  .footer-brand{grid-column:1/-1}
}
@media(max-width:390px){
  .header-right .icon-btn:nth-of-type(1){display:none}
  .hero h1{font-size:29px}
  .hero-card{min-height:630px}
  .hero-visual{height:285px}
  .hero-product{width:220px}
  .trust-item span{display:none}
  .categories-grid{grid-template-columns:1fr 1fr}
}

/* ACCESSIBILITY */
button:focus-visible,a:focus-visible,input:focus-visible{
  outline:3px solid rgba(108,77,246,.25);outline-offset:2px;
}
</style>
</head>

<body>

<div class="topbar">
  <div class="container topbar-inner">
    <div><i class="fas fa-bolt"></i> Weekend special: <strong>Up to 40% OFF</strong> on selected products</div>
    <div class="top-links"><a href="#">Track Order</a><a href="#">Help</a><a href="#">USD ▾</a></div>
  </div>
</div>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:8px">
      <button class="mobile-toggle icon-btn" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">
        <span class="brand-mark"><i class="fas fa-bag-shopping"></i></span>
        <span>Nexus<span class="accent">Shop</span></span>
      </a>
    </div>

    <nav class="main-nav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tags"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>

    <div class="header-right">
      <div class="search-wrap" role="search">
        <i class="fas fa-search"></i>
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products">
        <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" title="Account" aria-label="Account" id="accountBtn"><i class="far fa-user"></i></button>
      <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
      <button class="icon-btn" id="cartBtn" title="Shopping cart" aria-label="Shopping cart">
        <i class="fas fa-bag-shopping"></i><span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tags"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container">
      <div class="hero-card">
        <div class="hero-content">
          <div class="hero-kicker"><i class="fas fa-sparkles"></i> NEW COLLECTION 2026</div>
          <h1>Everything you love.<br><span>One better place.</span></h1>
          <p>Discover fashion, tech, accessories and everyday essentials selected for quality, style and value.</p>
          <div class="hero-actions">
            <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
            <button class="btn btn-ghost-white" id="exploreDeals"><i class="fas fa-bolt"></i> View Flash Deals</button>
          </div>
        </div>

        <div class="hero-visual">
          <div class="hero-product">
            <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=900&q=85" alt="NexusShop featured products">
          </div>
          <div class="floating-badge badge-one">
            <i class="fas fa-truck-fast"></i> Free shipping
            <small>On your first order</small>
          </div>
          <div class="floating-badge badge-two">
            <i class="fas fa-shield-heart"></i> Secure checkout
            <small>Shop with confidence</small>
          </div>
        </div>
      </div>

      <div class="trust-strip">
        <div class="trust-item"><div class="trust-icon"><i class="fas fa-truck-fast"></i></div><div><strong>Fast Delivery</strong><span>Quick & reliable</span></div></div>
        <div class="trust-item"><div class="trust-icon"><i class="fas fa-rotate-left"></i></div><div><strong>Easy Returns</strong><span>Simple return policy</span></div></div>
        <div class="trust-item"><div class="trust-icon"><i class="fas fa-lock"></i></div><div><strong>Secure Payment</strong><span>100% protected</span></div></div>
        <div class="trust-item"><div class="trust-icon"><i class="fas fa-headset"></i></div><div><strong>24/7 Support</strong><span>We're here to help</span></div></div>
      </div>
    </div>
  </section>

  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <span class="eyebrow">Explore</span>
          <h2 id="cat-title">Shop by category</h2>
          <p>Start with what you need</p>
        </div>
        <a href="#products" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
    </div>
  </section>

  <section class="section" id="products" aria-labelledby="prod-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <span class="eyebrow">Popular right now</span>
          <h2 id="prod-title">Trending products</h2>
          <p>Community favorites worth checking out</p>
        </div>
        <span class="result-count" id="resultCount"></span>
      </div>

      <div class="product-toolbar">
        <div class="filter-pills">
          <button class="filter-pill active" data-filter="">All</button>
          <button class="filter-pill" data-filter="Smartphones">Phones</button>
          <button class="filter-pill" data-filter="Laptops">Laptops</button>
          <button class="filter-pill" data-filter="Gadgets">Gadgets</button>
          <button class="filter-pill" data-filter="Accessories">Accessories</button>
          <button class="filter-pill" data-filter="Footwear">Footwear</button>
        </div>
      </div>

      <div class="products-grid" id="productsGrid" aria-live="polite"></div>
    </div>
  </section>

  <section class="section" id="deals" aria-labelledby="deals-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <span class="eyebrow">Limited time</span>
          <h2 id="deals-title">⚡ Flash deal</h2>
          <p>A great price, for a limited time</p>
        </div>
      </div>

      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="deal-tag"><i class="fas fa-bolt"></i> Limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light and incredibly powerful. The M2 chip delivers an impressive everyday experience.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — don't miss it.</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-gradient" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials" aria-labelledby="test-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <span class="eyebrow">Customer love</span>
          <h2 id="test-title">What shoppers say</h2>
          <p>Real feedback from our community</p>
        </div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <section class="section" aria-labelledby="news-title">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3 id="news-title">Stay in the loop ✨</h3>
          <p>Exclusive offers, new arrivals and early access — straight to your inbox.</p>
        </div>
        <form class="newsletter-form" id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Enter your email address" aria-label="Email address" required>
          <button class="btn" id="subscribeBtn" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <div class="brand"><span class="brand-mark"><i class="fas fa-bag-shopping"></i></span><span>Nexus<span class="accent">Shop</span></span></div>
        <p>A colorful, friendly shopping experience built around simple discovery, great products and helpful service.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="footer-col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div class="footer-col"><h5>Support</h5><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="footer-col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<div class="toast" id="toast" role="status" aria-live="polite">
  <i class="fas fa-circle-check"></i>
  <div><strong id="toastTitle">Added to cart</strong><br><span id="toastText">Your item is ready in the cart.</span></div>
</div>

<script>
/* =========================================================
   DATA
   ========================================================= */
const CATEGORIES = [
  {id:'phones',name:'Smartphones',icon:'fa-mobile-alt',count:24},
  {id:'laptops',name:'Laptops',icon:'fa-laptop',count:18},
  {id:'clothing',name:'Clothing',icon:'fa-tshirt',count:42},
  {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:31},
  {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:27},
  {id:'accessories',name:'Accessories',icon:'fa-watch',count:39}
];

const PRODUCTS = [
  {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',category:'Smartphones'},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:'',img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',category:'Laptops'},
  {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'Sale',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
  {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,badge:'',img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',category:'Footwear'},
  {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',category:'Gadgets'},
  {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,badge:'',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
  {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
  {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',category:'Gadgets'}
];

const TESTIMONIALS = [
  {name:'Ava Martin',role:'Verified Buyer',avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80',text:'Fast shipping and excellent support. The product exceeded my expectations!',stars:5},
  {name:'Michael Lee',role:'Frequent Shopper',avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80',text:'Great selection and smooth checkout. Will definitely shop again.',stars:4},
  {name:'Sophia Chen',role:'Designer',avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80',text:'Love the quality and the packaging. Everything arrived in perfect condition.',stars:5},
  {name:'James Wilson',role:'Tech Enthusiast',avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80',text:'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',stars:5}
];

/* STATE */
let cartCount=0;
let toastTimer;

/* DOM */
const categoriesGrid=document.getElementById('categoriesGrid');
const productsGrid=document.getElementById('productsGrid');
const resultCount=document.getElementById('resultCount');
const cartCountEl=document.getElementById('cartCount');
const searchInput=document.getElementById('searchInput');
const searchBtn=document.getElementById('searchBtn');
const mobileToggle=document.getElementById('mobileToggle');
const mobileMenu=document.getElementById('mobileMenu');
const newsletterForm=document.getElementById('newsletterForm');
const newsletterEmail=document.getElementById('newsletterEmail');
const newsletterMsg=document.getElementById('newsletterMsg');
const testimonialsList=document.getElementById('testimonialsList');
const toast=document.getElementById('toast');

/* HELPERS */
function escapeHtml(text){
  return String(text).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
}
function showToast(title,text){
  document.getElementById('toastTitle').textContent=title;
  document.getElementById('toastText').textContent=text;
  toast.classList.add('show');
  clearTimeout(toastTimer);
  toastTimer=setTimeout(()=>toast.classList.remove('show'),2600);
}
function updateCartCount(){
  cartCountEl.textContent=cartCount;
  cartCountEl.style.transform='scale(1.35)';
  setTimeout(()=>cartCountEl.style.transform='scale(1)',180);
}
function addToCart(productId,btnEl){
  const product=PRODUCTS.find(x=>x.id===productId);
  if(!product)return;
  cartCount++;
  updateCartCount();
  showToast('Added to cart',product.title);
  if(btnEl){
    const original=btnEl.innerHTML;
    btnEl.innerHTML='<i class="fas fa-check"></i> Added';
    btnEl.classList.add('added');
    setTimeout(()=>{btnEl.innerHTML=original;btnEl.classList.remove('added')},1400);
  }
}

/* CATEGORIES */
function renderCategories(){
  categoriesGrid.innerHTML='';
  CATEGORIES.forEach(cat=>{
    const el=document.createElement('button');
    el.type='button';
    el.className='cat-card';
    el.innerHTML=`<div class="icon-wrap"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="count">${cat.count} items</div>`;
    el.addEventListener('click',()=>{
      searchInput.value=cat.name;
      document.querySelectorAll('.filter-pill').forEach(p=>p.classList.toggle('active',p.dataset.filter===cat.name));
      filterProducts(cat.name);
      document.getElementById('products').scrollIntoView({behavior:'smooth'});
    });
    categoriesGrid.appendChild(el);
  });
}

/* PRODUCTS */
function renderProducts(list){
  productsGrid.innerHTML='';
  resultCount.textContent=`${list.length} product${list.length!==1?'s':''}`;

  if(!list.length){
    productsGrid.innerHTML=`<div style="grid-column:1/-1;background:#fff;border:1px solid var(--border);border-radius:18px;padding:50px;text-align:center"><div style="font-size:35px;margin-bottom:8px">🔎</div><strong>No products found</strong><p style="color:var(--muted);font-size:12px;margin-top:5px">Try another product name or category.</p></div>`;
    return;
  }

  list.forEach(p=>{
    const el=document.createElement('article');
    el.className='product-card';
    const badgeClass=p.badge==='Sale'?'sale':'';
    const badgeHtml=p.badge?`<span class="badge ${badgeClass}">${p.badge}</span>`:'';
    const oldPriceHtml=p.oldPrice?`<span class="old-price">$${p.oldPrice.toLocaleString()}</span>`:'';
    const stars='★'.repeat(Math.round(p.rating))+'☆'.repeat(5-Math.round(p.rating));

    el.innerHTML=`
      <div class="img-wrap">
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        ${badgeHtml}
        <button class="wish-btn" aria-label="Add ${escapeHtml(p.title)} to wishlist"><i class="far fa-heart"></i></button>
      </div>
      <div class="body">
        <div class="category-tag">${escapeHtml(p.category)}</div>
        <h5>${escapeHtml(p.title)}</h5>
        <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div>
        <div class="rating">${stars}<span>(${p.reviews})</span></div>
      </div>
      <div class="footer"><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button></div>
    `;
    productsGrid.appendChild(el);
  });

  productsGrid.querySelectorAll('.add-btn').forEach(btn=>{
    btn.addEventListener('click',e=>{e.stopPropagation();addToCart(Number(btn.dataset.id),btn)});
  });
  productsGrid.querySelectorAll('.wish-btn').forEach(btn=>{
    btn.addEventListener('click',e=>{
      e.stopPropagation();
      btn.classList.toggle('liked');
      btn.innerHTML=btn.classList.contains('liked')?'<i class="fas fa-heart"></i>':'<i class="far fa-heart"></i>';
      showToast(btn.classList.contains('liked')?'Saved to wishlist':'Removed from wishlist','Your wishlist has been updated.');
    });
  });
}

function filterProducts(query){
  const q=String(query||'').trim().toLowerCase();
  if(!q){renderProducts(PRODUCTS);return}
  renderProducts(PRODUCTS.filter(p=>p.title.toLowerCase().includes(q)||p.category.toLowerCase().includes(q)));
}

/* TESTIMONIALS */
function renderTestimonials(){
  testimonialsList.innerHTML='';
  TESTIMONIALS.forEach(t=>{
    const el=document.createElement('article');
    el.className='testimonial-card';
    const stars='★'.repeat(t.stars)+'☆'.repeat(5-t.stars);
    el.innerHTML=`<div class="stars">${stars}</div><blockquote>“${escapeHtml(t.text)}”</blockquote><div class="author"><img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}"><div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div></div>`;
    testimonialsList.appendChild(el);
  });
}

/* FILTER BUTTONS */
document.querySelectorAll('.filter-pill').forEach(pill=>{
  pill.addEventListener('click',()=>{
    document.querySelectorAll('.filter-pill').forEach(p=>p.classList.remove('active'));
    pill.classList.add('active');
    const filter=pill.dataset.filter;
    searchInput.value=filter;
    filterProducts(filter);
  });
});

/* SEARCH */
searchBtn.addEventListener('click',()=>{
  filterProducts(searchInput.value);
  document.getElementById('products').scrollIntoView({behavior:'smooth'});
});
searchInput.addEventListener('keydown',e=>{
  if(e.key==='Enter'){
    filterProducts(e.target.value);
    document.getElementById('products').scrollIntoView({behavior:'smooth'});
  }
});

/* MOBILE MENU */
mobileToggle.addEventListener('click',()=>{
  const open=mobileMenu.style.display==='block';
  mobileMenu.style.display=open?'none':'block';
  mobileToggle.innerHTML=open?'<i class="fas fa-bars"></i>':'<i class="fas fa-times"></i>';
});
mobileMenu.querySelectorAll('a').forEach(link=>link.addEventListener('click',()=>{
  mobileMenu.style.display='none';
  mobileToggle.innerHTML='<i class="fas fa-bars"></i>';
}));

/* HERO */
document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('products').scrollIntoView({behavior:'smooth'}));
document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deals').scrollIntoView({behavior:'smooth'}));

/* DEAL */
document.getElementById('buyDeal').addEventListener('click',function(){
  cartCount++;
  updateCartCount();
  showToast('Flash deal added','MacBook Air M2 is in your cart.');
  const original=this.innerHTML;
  this.innerHTML='<i class="fas fa-check"></i> Added!';
  setTimeout(()=>this.innerHTML=original,1600);
});

(function setupDealTimer(){
  const target=new Date(Date.now()+(24*60+36)*60*1000);
  function tick(){
    const diff=Math.max(0,target-Date.now());
    const days=Math.floor(diff/(24*3600*1000));
    const hours=Math.floor((diff%(24*3600*1000))/(3600*1000));
    const mins=Math.floor((diff%(3600*1000))/(60*1000));
    const secs=Math.floor((diff%(60*1000))/1000);
    document.getElementById('dealDays').textContent=days;
    document.getElementById('dealHours').textContent=String(hours).padStart(2,'0');
    document.getElementById('dealMinutes').textContent=String(mins).padStart(2,'0');
    document.getElementById('dealSeconds').textContent=String(secs).padStart(2,'0');
  }
  tick();setInterval(tick,1000);
})();

/* CART / ACCOUNT */
document.getElementById('cartBtn').addEventListener('click',()=>{
  showToast('Your cart',`${cartCount} item${cartCount!==1?'s':''} currently in your cart.`);
});
document.getElementById('accountBtn').addEventListener('click',()=>{
  showToast('Welcome to NexusShop','Account features are ready for your next step.');
});

/* NEWSLETTER */
newsletterForm.addEventListener('submit',e=>{
  e.preventDefault();
  const email=newsletterEmail.value.trim();
  if(!email||!email.includes('@')){
    newsletterMsg.textContent='Please enter a valid email.';
    newsletterMsg.style.color='#ffd0dc';
    return;
  }
  newsletterMsg.textContent='✓ Subscribed successfully!';
  newsletterMsg.style.color='#9ff2d5';
  newsletterEmail.value='';
  showToast('You are subscribed!','Thanks for joining NexusShop.');
  setTimeout(()=>newsletterMsg.textContent='',3500);
});

/* FOOTER / INIT */
document.getElementById('year').textContent=new Date().getFullYear();
renderCategories();
renderProducts(PRODUCTS);
renderTestimonials();
updateCartCount();

window.addEventListener('resize',()=>{
  if(window.innerWidth>850){
    mobileMenu.style.display='none';
    mobileToggle.innerHTML='<i class="fas fa-bars"></i>';
  }
});
</script>
</body>
</html>
