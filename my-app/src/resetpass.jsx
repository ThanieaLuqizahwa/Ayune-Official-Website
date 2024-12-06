import React from 'react';
import { Link } from 'react-router-dom';
import './file_css/forgotpass.css';

const resetpass = () => {
  return (
    <div className="forgot-password-page">
      <header>
        <div className="logo">
          <img src="assets/images/logobesar.svg" alt="Logo Ayune" />
        </div>
        <nav>
          <ul>
            <li><Link to="/HomeBeforeLogin">Beranda</Link></li>
            <li><Link to="/AboutUs">Tentang Kami</Link></li>
            <li><Link to="/#">Produk</Link></li>
            <li><Link to="/#">Konsultasi</Link></li>
          </ul>
        </nav>
        <div className="auth-buttons">
          <Link to="/Login"><button>Masuk</button></Link>
        </div>
      </header>

      <section>
        <div className="forgot-title">
          <h1>Reset Kata Sandi Anda?</h1>
        </div>

        <div className="container">
          <label htmlFor="password">Kata Sandi Baru</label>
          <input type="password" id="password" name="password" placeholder="Masukkan kata sandi baru Anda" />
        </div>
        <br />
        <Link to="/Login" className="btn">Ganti Kata Sandi</Link>
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
              <p><Link to="/#">Profil</Link></p>
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

export default resetpass;
