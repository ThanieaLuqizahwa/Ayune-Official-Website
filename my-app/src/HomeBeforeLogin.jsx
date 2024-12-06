import React from 'react';
import { Link } from 'react-router-dom';
import './file_css/HomeBeforeLogin.css';

const HomeBeforeLogin = () => {
  return (
    <div className="home-before-page">
      <header>
        <div className="logo">
          <img src="assets/images/logobesar.svg" alt="Logo Ayune" />
        </div>
        <nav>
          <ul>
            <li><Link to="/">BERANDA</Link></li>
            <li><Link to="/AboutUs">TENTANG KAMI</Link></li>
            <li><Link to="#">PRODUK</Link></li>
            <li><Link to="#">KONSULTASI</Link></li>
          </ul>
        </nav>
        <div className="auth-buttons">
          <Link to="/Login"><button>Masuk</button></Link>
        </div>
      </header>

      <section className="hero">
        <div className="hero-text">
          <h1>Capai tujuan kulit Anda bersama kami</h1>
          <p>Segera daftarkan diri Anda dan ketahui masalah kulit Anda bersama dokter kecantikan terpercaya dari kami</p>
          <div className="buttons">
            <Link to="/Login"><button>Masuk</button></Link>
            <Link to="/signup"><button>Daftar</button></Link>
          </div>
        </div>
        <div className="hero-image">
          <img src="assets/images/ilustrasiheader.png" alt="Ilustrasi Header" />
        </div>
      </section>

      <section className="products">
        <div className="product-section">
          <h2 className="product-title">Produk Kecantikan Terpopuler</h2>
          <div className="auth-buttons">
            <Link to="/produk" className="btn-right"><button>Selengkapnya &gt;</button></Link>
          </div>
        </div>
        <div className="product-list">
          <div className="product-item">
            <img src="assets/images/gambarheader1.png" alt="SKINTIFIC Peeling" />
            <p><strong>SKINTIFIC</strong><br />Peeling Lactic Acid Skin Renewal Exfoliating Serum<br />Rp300.000 - Rp340.000</p>
          </div>
          <div className="product-item">
            <img src="assets/images/gambarheader2.png" alt="SKINTIFIC Peeling" />
            <p><strong>SKINTIFIC</strong><br />Peeling Lactic Acid Skin Renewal Exfoliating Serum<br />Rp300.000 - Rp340.000</p>
          </div>
          <div className="product-item">
            <img src="assets/images/gambarheader3.png" alt="AMATERASUN Physical Sunscreen SPF 50+" />
            <p><strong>AMATERASUN</strong><br />Physical Sunscreen SPF 50+ PA++<br />Rp85.000 - Rp99.000</p>
          </div>
          <div className="product-item">
            <img src="assets/images/gambarheader4.png" alt="SOMETHINC Diamond Phyto Stem Cell Serum" />
            <p><strong>SOMETHINC</strong><br />Diamond Phyto Stem Cell Serum<br />Rp130.000 - Rp140.000</p>
          </div>
          <div className="product-item">
            <img src="assets/images/gambarheader5.png" alt="BIO-OIL Skincare Oil Natural" />
            <p><strong>BIO-OIL</strong><br />Skincare Oil Natural<br />Rp260.000 - Rp325.000</p>
          </div>
        </div>
      </section>

      {/* footer */}
      <footer className="aboutus-footer">
        <div className="footer-separator"></div>
        <div className="footer-container">
          <div className="footer-logo">
            <img src="assets/images/logobesar.svg" alt="Logo Ayune" />
          </div>
          <div className="footer-content">
            <div className="customer-care">
              <h3>Layanan Pelanggan</h3>
              <p>Whatsapp: +62-851-6564-4356</p>
              <p>Instagram: @ayunneconsultation</p>
              <p>Email: ayunneconsultation@gmail.com</p>
              <p>
                <strong>Jam operasional:</strong><br />
                Senin-Jumat: 10:00 - 21:00 WIB<br />
                Sabtu: 10:00 - 17:00 WIB
              </p>
            </div>
            <div className="account">
              <h3>Akun Saya</h3>
              <p><Link to="#">Profil</Link></p>
              <p><Link to="/signup">Daftar</Link></p>
              <p><Link to="/Login">Masuk</Link></p>
            </div>
            <div className="social-media">
              <h3>Ikuti Kami:</h3>
              <div className="social-icons">
                <a href="#"><img src="assets/images/instagram.png" alt="Instagram" /></a>
                <a href="#"><img src="assets/images/twt.png" alt="Twitter" /></a>
                <a href="#"><img src="assets/images/yt.png" alt="YouTube" /></a>
              </div>
            </div>
          </div>
        </div>
        <div className="footer-bottom">
          <p>©AYUNNE, 2024. ALL RIGHTS RESERVED</p>
        </div>
      </footer>
    </div>
  );
};

export default HomeBeforeLogin;
