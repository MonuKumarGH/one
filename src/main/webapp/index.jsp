<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quickee • food delivery</title>
  <!-- Font Awesome 6 (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ---------- GLOBAL RESET & VARIABLES ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    }

    :root {
      --primary: #ff6b35;
      --primary-dark: #e85a2a;
      --secondary: #2d2d2d;
      --light-bg: #fef9f5;
      --card-bg: #ffffff;
      --text-dark: #1e1e1e;
      --text-soft: #5e5e5e;
      --border-light: #f0eae4;
      --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.05), 0 8px 10px -6px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 20px 30px -10px rgba(255, 107, 53, 0.15), 0 8px 20px -8px rgba(0, 0, 0, 0.1);
      --radius-lg: 28px;
      --radius-md: 18px;
      --radius-sm: 12px;
      --transition: all 0.2s ease;
    }

    body {
      background-color: var(--light-bg);
      color: var(--text-dark);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    /* ---------- REUSABLE CONTAINER ---------- */
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- HEADER / NAVBAR ---------- */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 0;
      flex-wrap: wrap;
      gap: 16px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 2rem;
      font-weight: 800;
      letter-spacing: -0.02em;
      color: var(--secondary);
    }

    .logo i {
      color: var(--primary);
      font-size: 2.2rem;
      transform: rotate(-5deg);
    }

    .logo span {
      color: var(--primary);
      margin-left: 2px;
    }

    .nav-links {
      display: flex;
      gap: 32px;
      align-items: center;
      font-weight: 500;
    }

    .nav-links a {
      text-decoration: none;
      color: var(--text-dark);
      transition: var(--transition);
      font-size: 1rem;
    }

    .nav-links a:hover {
      color: var(--primary);
    }

    .btn-outline {
      border: 2px solid var(--primary);
      background: transparent;
      color: var(--primary);
      padding: 10px 24px;
      border-radius: 40px;
      font-weight: 600;
      transition: var(--transition);
      cursor: pointer;
    }

    .btn-outline:hover {
      background: var(--primary);
      color: white;
      box-shadow: 0 8px 18px rgba(255, 107, 53, 0.25);
    }

    .btn-solid {
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 1rem;
      cursor: pointer;
      transition: var(--transition);
      box-shadow: 0 8px 18px -6px rgba(255, 107, 53, 0.4);
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }

    .btn-solid:hover {
      background: var(--primary-dark);
      transform: translateY(-2px);
      box-shadow: 0 16px 24px -8px rgba(255, 107, 53, 0.5);
    }

    /* ---------- HERO SECTION ---------- */
    .hero {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 48px;
      padding: 40px 0 60px;
      flex-wrap: wrap;
    }

    .hero-content {
      flex: 1 1 350px;
    }

    .hero-badge {
      display: inline-block;
      background: rgba(255, 107, 53, 0.12);
      color: var(--primary);
      font-weight: 600;
      font-size: 0.85rem;
      padding: 8px 18px;
      border-radius: 40px;
      letter-spacing: 0.3px;
      margin-bottom: 24px;
      border: 1px solid rgba(255, 107, 53, 0.2);
    }

    .hero-content h1 {
      font-size: clamp(2.4rem, 5vw, 3.8rem);
      font-weight: 800;
      line-height: 1.15;
      letter-spacing: -0.02em;
      margin-bottom: 20px;
    }

    .hero-content h1 .highlight {
      color: var(--primary);
      position: relative;
      display: inline-block;
    }

    .hero-content p {
      font-size: 1.15rem;
      color: var(--text-soft);
      margin-bottom: 32px;
      max-width: 540px;
    }

    .hero-actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
      align-items: center;
    }

    .hero-stats {
      display: flex;
      gap: 32px;
      margin-top: 40px;
      flex-wrap: wrap;
    }

    .stat-item h3 {
      font-size: 1.8rem;
      font-weight: 800;
      color: var(--secondary);
    }

    .stat-item p {
      font-size: 0.9rem;
      color: var(--text-soft);
      margin-bottom: 0;
    }

    .hero-visual {
      flex: 1 1 300px;
      display: flex;
      justify-content: center;
      align-items: center;
      position: relative;
    }

    .food-plate {
      background: linear-gradient(145deg, #ffb38b, #ff6b35);
      width: min(100%, 360px);
      aspect-ratio: 1/1;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: 0 40px 50px -20px rgba(255, 107, 53, 0.5);
      position: relative;
    }

    .food-plate i {
      font-size: clamp(6rem, 12vw, 9rem);
      color: white;
      filter: drop-shadow(0 8px 12px rgba(0, 0, 0, 0.15));
    }

    /* floating icons around plate */
    .float-icon {
      position: absolute;
      background: white;
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: 0 15px 25px -8px rgba(0, 0, 0, 0.15);
      animation: float 3s ease-in-out infinite;
    }

    .float-1 {
      width: 60px;
      height: 60px;
      top: -5%;
      left: -5%;
      animation-delay: 0s;
    }

    .float-1 i {
      color: #f4b942;
      font-size: 1.8rem;
    }

    .float-2 {
      width: 70px;
      height: 70px;
      bottom: 0%;
      right: -10%;
      animation-delay: 0.8s;
    }

    .float-2 i {
      color: #e85a2a;
      font-size: 2rem;
    }

    .float-3 {
      width: 50px;
      height: 50px;
      top: 15%;
      right: -10%;
      animation-delay: 0.3s;
    }

    .float-3 i {
      color: #4caf50;
      font-size: 1.5rem;
    }

    @keyframes float {
      0% { transform: translateY(0px); }
      50% { transform: translateY(-10px); }
      100% { transform: translateY(0px); }
    }

    /* ---------- SECTION TITLE ---------- */
    .section-title {
      font-size: 2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }

    .section-sub {
      color: var(--text-soft);
      margin-bottom: 48px;
      font-size: 1.1rem;
    }

    /* ---------- FEATURES / HOW IT WORKS ---------- */
    .features {
      padding: 80px 0;
    }

    .features-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 30px;
    }

    .feature-card {
      background: var(--card-bg);
      padding: 32px 24px;
      border-radius: var(--radius-md);
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      border: 1px solid var(--border-light);
      text-align: center;
    }

    .feature-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: rgba(255, 107, 53, 0.2);
    }

    .feature-icon {
      width: 70px;
      height: 70px;
      background: rgba(255, 107, 53, 0.1);
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 24px;
    }

    .feature-icon i {
      font-size: 2rem;
      color: var(--primary);
    }

    .feature-card h3 {
      font-size: 1.3rem;
      font-weight: 700;
      margin-bottom: 12px;
    }

    .feature-card p {
      color: var(--text-soft);
      font-size: 0.95rem;
    }

    /* ---------- POPULAR DISHES ---------- */
    .dishes {
      padding: 70px 0;
    }

    .dish-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 30px;
    }

    .dish-card {
      background: white;
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      border: 1px solid var(--border-light);
      cursor: pointer;
    }

    .dish-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 30px 40px -15px rgba(0, 0, 0, 0.15);
    }

    .dish-img {
      height: 180px;
      background: #f9ede5;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 4rem;
      color: var(--primary);
      position: relative;
    }

    .dish-img i {
      filter: drop-shadow(0 6px 6px rgba(0, 0, 0, 0.05));
    }

    .dish-tag {
      position: absolute;
      top: 16px;
      left: 16px;
      background: white;
      padding: 6px 14px;
      border-radius: 40px;
      font-size: 0.75rem;
      font-weight: 600;
      color: var(--primary);
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
    }

    .dish-info {
      padding: 20px 18px 22px;
    }

    .dish-info h4 {
      font-size: 1.2rem;
      font-weight: 700;
      margin-bottom: 6px;
    }

    .dish-meta {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 12px;
    }

    .price {
      font-weight: 800;
      color: var(--primary);
      font-size: 1.25rem;
    }

    .rating i {
      color: #f4b942;
      font-size: 0.9rem;
    }

    .rating span {
      color: var(--text-soft);
      font-size: 0.9rem;
      margin-left: 4px;
    }

    /* ---------- CTA BANNER ---------- */
    .cta-banner {
      background: linear-gradient(135deg, #2d2d2d 0%, #1e1e1e 100%);
      border-radius: 48px;
      padding: 56px 48px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 32px;
      margin: 60px 0 40px;
      box-shadow: 0 30px 40px -20px rgba(0, 0, 0, 0.25);
    }

    .cta-text h2 {
      color: white;
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }

    .cta-text p {
      color: rgba(255, 255, 255, 0.75);
      font-size: 1.1rem;
      max-width: 500px;
    }

    .cta-banner .btn-solid {
      background: white;
      color: var(--primary);
      box-shadow: none;
      font-weight: 700;
      padding: 16px 36px;
      font-size: 1.1rem;
    }

    .cta-banner .btn-solid:hover {
      background: #fef1ea;
      color: var(--primary-dark);
      transform: translateY(-3px);
    }

    /* ---------- FOOTER ---------- */
    footer {
      padding: 40px 0 30px;
      border-top: 1px solid var(--border-light);
      margin-top: 40px;
    }

    .footer-content {
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 24px;
    }

    .footer-copy {
      color: var(--text-soft);
      font-size: 0.95rem;
    }

    .social-links {
      display: flex;
      gap: 18px;
    }

    .social-links a {
      background: white;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--secondary);
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      text-decoration: none;
    }

    .social-links a:hover {
      background: var(--primary);
      color: white;
      transform: translateY(-3px);
    }

    /* ---------- RESPONSIVE FINE-TUNING ---------- */
    @media (max-width: 700px) {
      .navbar {
        flex-direction: column;
        align-items: flex-start;
      }

      .nav-links {
        width: 100%;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 16px;
      }

      .hero {
        flex-direction: column-reverse;
        text-align: center;
      }

      .hero-content p {
        margin-left: auto;
        margin-right: auto;
      }

      .hero-actions {
        justify-content: center;
      }

      .hero-stats {
        justify-content: center;
      }

      .cta-banner {
        text-align: center;
        justify-content: center;
        padding: 40px 24px;
      }

      .cta-text h2 {
        font-size: 1.8rem;
      }

      .footer-content {
        flex-direction: column-reverse;
        text-align: center;
      }
    }

    @media (max-width: 480px) {
      .logo {
        font-size: 1.7rem;
      }

      .btn-outline {
        padding: 8px 18px;
      }

      .hero-stats {
        gap: 24px;
      }

      .stat-item h3 {
        font-size: 1.5rem;
      }
    }
  </style>
</head>
<body>

  <!-- header / navbar -->
  <div class="container">
    <nav class="navbar">
      <div class="logo">
        <i class="fas fa-bolt"></i>
        Quickee<span>.</span>
      </div>
      <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Restaurants</a>
        <a href="#">Offers</a>
        <a href="#">Contact</a>
        <button class="btn-outline">Sign in</button>
      </div>
    </nav>
  </div>

  <!-- hero section -->
  <div class="container">
    <section class="hero">
      <div class="hero-content">
        <div class="hero-badge">
          <i class="fas fa-clock" style="margin-right: 6px;"></i> 15–25 min delivery
        </div>
        <h1>
          Crave it. <span class="highlight">Quickee</span> it.
        </h1>
        <p>
          Your favorite meals from top restaurants, delivered blazing fast. 
          Hot, fresh, and right to your door.
        </p>
        <div class="hero-actions">
          <button class="btn-solid">
            <i class="fas fa-location-dot"></i> Order now
          </button>
          <button class="btn-outline" style="background: white;">View menu</button>
        </div>
        <div class="hero-stats">
          <div class="stat-item">
            <h3>200+</h3>
            <p>restaurants</p>
          </div>
          <div class="stat-item">
            <h3>4.8★</h3>
            <p>average rating</p>
          </div>
          <div class="stat-item">
            <h3>30min</h3>
            <p>avg. delivery</p>
          </div>
        </div>
      </div>

      <div class="hero-visual">
        <div class="food-plate">
          <i class="fas fa-utensils"></i>
        </div>
        <!-- floating icons -->
        <div class="float-icon float-1"><i class="fas fa-pizza-slice"></i></div>
        <div class="float-icon float-2"><i class="fas fa-motorcycle"></i></div>
        <div class="float-icon float-3"><i class="fas fa-leaf"></i></div>
      </div>
    </section>
  </div>

  <!-- features / how it works -->
  <div class="container">
    <section class="features">
      <h2 class="section-title">Why Quickee?</h2>
      <p class="section-sub">Lightning-fast delivery, zero hassle.</p>
      <div class="features-grid">
        <div class="feature-card">
          <div class="feature-icon"><i class="fas fa-bolt"></i></div>
          <h3>Super fast</h3>
          <p>Hot meals in 15–25 minutes, thanks to our smart routing.</p>
        </div>
        <div class="feature-card">
          <div class="feature-icon"><i class="fas fa-store"></i></div>
          <h3>Local favorites</h3>
          <p>200+ curated restaurants and hidden gems near you.</p>
        </div>
        <div class="feature-card">
          <div class="feature-icon"><i class="fas fa-tags"></i></div>
          <h3>Daily deals</h3>
          <p>Exclusive discounts & free delivery on your first order.</p>
        </div>
        <div class="feature-card">
          <div class="feature-icon"><i class="fas fa-headset"></i></div>
          <h3>24/7 support</h3>
          <p>Real humans ready to help, anytime you need.</p>
        </div>
      </div>
    </section>
  </div>

  <!-- popular dishes -->
  <div class="container">
    <section class="dishes">
      <h2 class="section-title">Popular right now</h2>
      <p class="section-sub">Most loved dishes from Quickee kitchens</p>
      <div class="dish-grid">
        <div class="dish-card">
          <div class="dish-img">
            <i class="fas fa-pizza-slice"></i>
            <span class="dish-tag">-20%</span>
          </div>
          <div class="dish-info">
            <h4>Pepperoni Pizza</h4>
            <div class="dish-meta">
              <span class="price">$12.90</span>
              <span class="rating"><i class="fas fa-star"></i><span>4.9 (120+)</span></span>
            </div>
          </div>
        </div>
        <div class="dish-card">
          <div class="dish-img">
            <i class="fas fa-bowl-food"></i>
            <span class="dish-tag">popular</span>
          </div>
          <div class="dish-info">
            <h4>Chicken Teriyaki</h4>
            <div class="dish-meta">
              <span class="price">$14.50</span>
              <span class="rating"><i class="fas fa-star"></i><span>4.8 (98)</span></span>
            </div>
          </div>
        </div>
        <div class="dish-card">
          <div class="dish-img">
            <i class="fas fa-burger"></i>
            <span class="dish-tag">new</span>
          </div>
          <div class="dish-info">
            <h4>Double Smash Burger</h4>
            <div class="dish-meta">
              <span class="price">$10.90</span>
              <span class="rating"><i class="fas fa-star"></i><span>4.7 (210)</span></span>
            </div>
          </div>
        </div>
        <div class="dish-card">
          <div class="dish-img">
            <i class="fas fa-fish"></i>
            <span class="dish-tag">-15%</span>
          </div>
          <div class="dish-info">
            <h4>Sushi Platter</h4>
            <div class="dish-meta">
              <span class="price">$18.30</span>
              <span class="rating"><i class="fas fa-star"></i><span>4.9 (76)</span></span>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <!-- CTA banner -->
  <div class="container">
    <div class="cta-banner">
      <div class="cta-text">
        <h2>Hungry? We’ve got you.</h2>
        <p>Get $0 delivery fee on your first order with code <strong>QUICKEE</strong>.</p>
      </div>
      <button class="btn-solid">
        <i class="fas fa-bag-shopping"></i> Start your order
      </button>
    </div>
  </div>

  <!-- footer -->
  <div class="container">
    <footer>
      <div class="footer-content">
        <div class="footer-copy">
          &copy; 2025 Quickee. All rights reserved. Made for food lovers.
        </div>
        <div class="social-links">
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
        </div>
      </div>
    </footer>
  </div>

</body>
</html>
