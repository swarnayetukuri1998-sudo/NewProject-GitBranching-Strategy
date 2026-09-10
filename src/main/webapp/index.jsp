<!doctype html>
<html lang="en"> 
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>MyShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="" crossorigin="anonymous">

    
<style>
:root{
  --bg:#f5f7fb;
  --surface:#ffffff;
  --surface-2:#eef2f7;
  --text:#172033;
  --muted:#6b7280;
  --primary:#111827;
  --accent:#6c5ce7;
  --accent-2:#8b5cf6;
  --success:#16a34a;
  --danger:#ef4444;
  --border:#e7eaf0;
  --shadow:0 12px 35px rgba(17,24,39,.08);
  --shadow-lg:0 24px 60px rgba(17,24,39,.14);
  --radius:18px;
  --container:1240px;
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  margin:0;
  font-family:Inter,system-ui,-apple-system,"Segoe UI",Roboto,Arial,sans-serif;
  color:var(--text);
  background:linear-gradient(180deg,#fff 0,#f7f8fc 42%,#f3f5f9 100%);
  line-height:1.5;
}
a{color:inherit;text-decoration:none}
button,input{font:inherit}
button{cursor:pointer}
.container{width:100%;max-width:var(--container);margin:auto;padding:0 24px}

/* Header */
header{
  position:sticky;top:0;z-index:50;
  background:rgba(255,255,255,.88);
  border-bottom:1px solid rgba(17,24,39,.07);
  backdrop-filter:blur(18px);
}
.header-inner{min-height:76px;display:flex;align-items:center;gap:28px}
.brand{font-family:Poppins,sans-serif;font-size:25px;font-weight:800;letter-spacing:-.7px;white-space:nowrap}
.brand .accent{color:var(--accent)}
.main-nav{flex:1}
.main-nav ul{display:flex;justify-content:center;gap:5px;list-style:none;margin:0;padding:0}
.main-nav li a{
  display:flex;align-items:center;gap:7px;padding:10px 13px;
  border-radius:10px;color:#4b5563;font-weight:600;font-size:14px;
  transition:.2s ease;
}
.main-nav li a:hover{background:#f1efff;color:var(--accent)}
.search{
  width:290px;display:flex;align-items:center;gap:9px;
  background:#f4f5f8;border:1px solid transparent;padding:10px 13px;
  border-radius:13px;transition:.2s;
}
.search:focus-within{background:#fff;border-color:#d9d2ff;box-shadow:0 0 0 4px rgba(108,92,231,.1)}
.search input{border:0;background:transparent;outline:0;width:100%;color:var(--text);font-size:13px}
.icon-btn{
  width:38px;height:38px;display:inline-grid;place-items:center;
  border:0;background:transparent;color:#374151;border-radius:10px;
  transition:.2s;
}
.icon-btn:hover{background:#f1efff;color:var(--accent)}
.header-actions{display:flex;align-items:center;gap:3px}
.cart{position:relative;display:inline-grid;place-items:center;width:42px;height:42px;border-radius:11px}
.cart:hover{background:#f1efff;color:var(--accent)}
.cart-count{
  position:absolute;top:0;right:-1px;min-width:19px;height:19px;padding:0 5px;
  display:grid;place-items:center;border-radius:20px;background:var(--accent);
  color:#fff;font-size:10px;font-weight:800;border:2px solid #fff;
}
.mobile-toggle{display:none;border:0;background:transparent;font-size:20px;color:var(--text)}

/* Hero */
.hero{
  max-width:var(--container);margin:22px auto 0;min-height:470px;
  border-radius:26px;overflow:hidden;display:flex;align-items:center;
  background:
    linear-gradient(90deg,rgba(11,16,32,.92) 0%,rgba(11,16,32,.70) 48%,rgba(11,16,32,.18) 100%),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover;
  color:#fff;box-shadow:var(--shadow-lg);
}
.hero .container{padding:70px 55px}
.hero h1{
  max-width:720px;font-family:Poppins,sans-serif;font-size:52px;line-height:1.08;
  margin:0 0 18px;letter-spacing:-1.8px;
}
.hero p{max-width:610px;margin:0 0 28px;color:rgba(255,255,255,.83);font-size:16px}
.btn{
  display:inline-flex;align-items:center;justify-content:center;gap:9px;
  padding:12px 20px;border-radius:12px;font-weight:700;border:0;transition:.2s;
}
.btn-primary{background:linear-gradient(135deg,var(--accent),var(--accent-2));color:#fff;box-shadow:0 8px 20px rgba(108,92,231,.3)}
.btn-primary:hover{transform:translateY(-2px);box-shadow:0 12px 26px rgba(108,92,231,.4)}
.btn-ghost{background:rgba(255,255,255,.1);border:1px solid rgba(255,255,255,.35);color:#fff;margin-left:8px}
.btn-ghost:hover{background:rgba(255,255,255,.18)}

/* Sections */
.section{padding:70px 0 0}
.section .title{text-align:center;margin-bottom:28px}
.section .title h2{font-family:Poppins,sans-serif;font-size:30px;letter-spacing:-.7px;margin:0 0 7px}
.section .title p{margin:0}
.muted{color:var(--muted)}
.grid{display:grid;gap:18px}

/* Categories */
.categories{grid-template-columns:repeat(6,1fr)}
.cat-card{
  background:rgba(255,255,255,.9);border:1px solid var(--border);border-radius:17px;
  padding:23px 12px;text-align:center;box-shadow:0 7px 22px rgba(17,24,39,.04);
  transition:.22s;cursor:pointer;
}
.cat-card:hover{transform:translateY(-5px);border-color:#d9d2ff;box-shadow:var(--shadow)}
.cat-card .icon{
  width:52px;height:52px;margin:0 auto 13px;display:grid;place-items:center;
  border-radius:15px;background:#f1efff;color:var(--accent);font-size:21px;
}
.cat-card h4{margin:0;font-size:14px}
.cat-card .muted{font-size:12px;margin-top:5px}

/* Products */
.products{grid-template-columns:repeat(4,1fr)}
.product{
  position:relative;background:#fff;border:1px solid var(--border);border-radius:18px;
  overflow:hidden;display:flex;flex-direction:column;box-shadow:0 7px 24px rgba(17,24,39,.05);
  transition:.22s;
}
.product:hover{transform:translateY(-6px);box-shadow:var(--shadow-lg)}
.product img{width:100%;height:225px;object-fit:cover;display:block;background:#f4f5f8;transition:.3s}
.product:hover img{transform:scale(1.025)}
.product-body{padding:16px 17px 10px;display:flex;flex-direction:column;gap:8px;flex:1}
.product h5{margin:0;font-size:15px;font-weight:700}
.product-body>.muted{font-size:12px;text-transform:capitalize}
.price-row{display:flex;align-items:end;justify-content:space-between;gap:8px;margin-top:3px}
.price{font-weight:800;font-size:19px;color:var(--text)}
.old-price{color:#9ca3af;text-decoration:line-through;font-weight:500;font-size:12px;margin-left:4px}
.rating{color:#f59e0b;font-size:12px;white-space:nowrap}
.product-footer{padding:10px 12px 13px;display:flex;gap:8px}
.add-btn{
  flex:1;background:var(--primary);color:#fff;border:0;padding:10px;
  border-radius:10px;cursor:pointer;font-weight:700;transition:.2s;
}
.add-btn:hover{background:var(--accent)}
.wish-btn{
  width:42px;background:#fff;border:1px solid var(--border);padding:8px;
  border-radius:10px;cursor:pointer;color:#6b7280;
}
.wish-btn:hover{color:var(--danger);border-color:#fecaca;background:#fff7f7}

/* Badges generated inline by JS */
.product > div[style*="position:absolute"]{z-index:2}
.product > div[style*="position:absolute"] span{border-radius:999px!important;padding:6px 10px!important}

/* Deal */
.deal{
  display:flex;overflow:hidden;align-items:stretch;background:#111827;color:#fff;
  border-radius:22px;box-shadow:var(--shadow-lg);
}
.deal img{width:50%;min-height:350px;object-fit:cover;display:block}
.deal .content{padding:42px;flex:1;display:flex;flex-direction:column;justify-content:center}
.deal .content h3{font-family:Poppins,sans-serif;font-size:32px;margin:0 0 8px}
.deal .content .muted{color:#aeb6c6}
.timer{display:flex;gap:9px;margin:22px 0}
.time-box{
  background:#252d3c;color:#fff;padding:10px 12px;border-radius:11px;
  min-width:68px;text-align:center;border:1px solid #374151;
}
.deal .price{font-size:28px;color:#fff}
.deal .old-price{font-size:15px;color:#9ca3af}
.deal-discount{background:#ef4444!important;border-radius:999px!important;padding:6px 11px!important}

/* Testimonials */
.testimonials{display:grid;grid-template-columns:repeat(2,1fr);gap:18px;padding:0 2px}
.testimonial{
  background:#fff;border:1px solid var(--border);padding:24px;border-radius:18px;
  box-shadow:0 7px 22px rgba(17,24,39,.04);
}
.testimonial .rating{font-size:14px}
.testimonial p{font-size:15px;color:#4b5563;line-height:1.7}

/* Newsletter */
.newsletter{
  background:linear-gradient(135deg,#171c2b,#29204c);color:#fff;border-radius:22px;
  padding:46px 25px;text-align:center;box-shadow:var(--shadow-lg);
}
.newsletter h3{font-family:Poppins,sans-serif;font-size:28px;margin:0 0 5px}
.newsletter p{color:#cbd0db}
.newsletter input{
  padding:13px 16px;border-radius:12px;border:1px solid #e5e7eb;width:320px;
  max-width:100%;outline:0;
}

/* Footer */
footer{margin-top:70px;padding:45px 0;background:#fff;border-top:1px solid var(--border);color:var(--muted);font-size:14px}
footer .container>div:first-child>div:first-child{font-family:Poppins,sans-serif;color:var(--text);font-size:20px!important}

/* Responsive */
@media(max-width:1100px){
  .header-inner{gap:15px}.search{width:230px}.categories{grid-template-columns:repeat(3,1fr)}
  .products{grid-template-columns:repeat(3,1fr)}
}
@media(max-width:900px){
  .main-nav{display:none}.mobile-toggle{display:inline-block}.header-inner{justify-content:space-between}
  .hero{margin:14px 16px 0}.hero .container{padding:55px 35px}.hero h1{font-size:42px}
  .search{flex:1;max-width:300px}.products{grid-template-columns:repeat(2,1fr)}
  .deal img{width:42%;min-height:300px}.testimonials{grid-template-columns:1fr}
}
@media(max-width:600px){
  .container{padding:0 16px}.brand{font-size:21px}.header-actions .icon-btn{display:none}
  .search{max-width:none;min-width:0}.hero{border-radius:18px;margin:10px 10px 0;min-height:430px}
  .hero .container{padding:38px 25px}.hero h1{font-size:31px}.hero p{font-size:14px}
  .btn{padding:11px 15px}.btn-ghost{margin-left:4px}
  .categories{grid-template-columns:repeat(2,1fr)}.products{grid-template-columns:1fr}
  .section{padding-top:52px}.section .title h2{font-size:25px}
  .deal{flex-direction:column}.deal img{width:100%;height:230px;min-height:0}
  .deal .content{padding:28px 22px}.deal .content h3{font-size:27px}
  .timer{gap:6px}.time-box{min-width:58px;padding:9px 7px}
}
@media(max-width:700px){.container>div[style*="grid-template-columns:repeat(4"]{grid-template-columns:repeat(2,1fr)!important}}
</style>

   
</head>

<body>
<div style="background:#111827;color:#fff;text-align:center;font-size:12px;padding:7px 12px;letter-spacing:.1px;">
    ✨ Free shipping on orders over $50 &nbsp;•&nbsp; New deals added every day
</div>

    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><em class="fas fa-th-large"></em> Categories <em class="fas fa-chevron-down" style="font-size:12px;"></em></a>
                    </li>
                    <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                    <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu (hidden on desktop) -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid rgba(10,37,64,0.04);">
            <div class="container" style="padding:12px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:8px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container">
                <h1>Premium picks. Better prices. <span style="color:#a78bfa">Made for you.</span></h1>
                <p>Discover trending fashion, tech and accessories curated for everyday shopping. Enjoy exclusive deals, fast delivery and a smoother shopping experience.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <section class="container" style="padding-top:22px;">
            <div style="display:grid;grid-template-columns:repeat(4,1fr);gap:12px;">
                <div style="background:#fff;border:1px solid var(--border);border-radius:14px;padding:15px;display:flex;gap:11px;align-items:center;">
                    <i class="fas fa-truck" style="color:var(--accent)"></i><div><strong style="font-size:13px">Fast Delivery</strong><div class="muted" style="font-size:11px">Quick & reliable shipping</div></div>
                </div>
                <div style="background:#fff;border:1px solid var(--border);border-radius:14px;padding:15px;display:flex;gap:11px;align-items:center;">
                    <i class="fas fa-shield-alt" style="color:var(--accent)"></i><div><strong style="font-size:13px">Secure Payments</strong><div class="muted" style="font-size:11px">100% protected checkout</div></div>
                </div>
                <div style="background:#fff;border:1px solid var(--border);border-radius:14px;padding:15px;display:flex;gap:11px;align-items:center;">
                    <i class="fas fa-undo" style="color:var(--accent)"></i><div><strong style="font-size:13px">Easy Returns</strong><div class="muted" style="font-size:11px">Simple return process</div></div>
                </div>
                <div style="background:#fff;border:1px solid var(--border);border-radius:14px;padding:15px;display:flex;gap:11px;align-items:center;">
                    <i class="fas fa-headset" style="color:var(--accent)"></i><div><strong style="font-size:13px">24/7 Support</strong><div class="muted" style="font-size:11px">We're here to help</div></div>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2 class="section-title">Shop by Category</h2>
                <p class="muted">Browse through our wide range of products across curated categories.</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular picks based on recent activity.</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal" style="align-items:stretch;">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:12px;opacity:.85">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:12px;opacity:.85">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:12px;opacity:.85">Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:12px;opacity:.85">Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;">
                        <div class="price">$999 <span class="old-price" style="font-size:16px">$1,199</span></div>
                        <div class="deal-discount" style="background:#ff4757;color:white;padding:6px 10px;border-radius:8px;font-weight:700">-17%</div>
                    </div>

                    <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
                    <div style="margin-top:18px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What our customers say</h2>
                <p class="muted">Real reviews from verified buyers.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Ava Martin</div>
                            <div class="muted" style="font-size:13px">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Michael Lee</div>
                            <div class="muted" style="font-size:13px">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to get exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div style="font-weight:700;font-size:18px">NexusShop</div>
                <p class="muted" style="margin-top:8px">A modern e-commerce demo built with HTML, CSS & JavaScript.</p>
                <div style="margin-top:14px;display:flex;gap:10px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:40px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Company</div>
                    <div class="muted" style="line-height:1.8">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Support</div>
                    <div class="muted" style="line-height:1.8">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:22px;color:var(--muted);font-size:13px">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
    
        // --- Sample data (can be replaced by server-side data or API) ---
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        // --- Render categories & products ---
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:13px;margin-top:6px">Explore ${cat.name}</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 60,
                        behavior: 'smooth'
                    });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute;margin:12px"><span style="background:${p.badge.startsWith('-')? '#ff4757' : 'var(--success)'};color:white;padding:6px 8px;border-radius:8px;font-weight:700;font-size:12px">${p.badge}</span></div>` : ''}
                    <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="muted">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">${p.oldPrice ? '$'+p.oldPrice.toLocaleString() : ''}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:12px;color:var(--muted)">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // attach listeners to add buttons
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        // --- Utilities ---
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            // Simple feedback
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // --- Search handling ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // --- Mobile menu toggle ---
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        // --- Simple dropdown (desktop) ---
        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', (e) => {
            e.preventDefault();
            alert('Use the category tiles below to filter — this is a demo.');
        });

        // --- Newsletter subscribe (demo) ---
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#ffb3b3';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#cce7ff';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- Countdown timer for deal ---
        (function setupDealTimer() {
            // Target: 1 day from now (demo)
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); // 24h36m
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // --- Small UI bindings ---
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 60,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to cart (demo).');
        });

        // --- Initialization ---
        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html> 
