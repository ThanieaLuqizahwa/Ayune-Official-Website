import React from 'react';
import { Link } from 'react-router-dom';
import './file_css/rincianbayar.css'; // Pastikan path CSS benar

const Rincianbayar = () => {
  return (
    <div className="rincianbayar-page">
      <header>
        <div className="logo">
          <img src="assets/images/logobesar.svg" alt="Logo Ayune" />
        </div>
        <nav>
          <ul>
            <li><Link to="/HomeAfterLogin">BERANDA</Link></li>
            <li><Link to="/AboutUs_Login">TENTANG KAMI</Link></li>
            <li><Link to="Produk">PRODUK</Link></li>
            <li><Link to="/Ahli">KONSULTASI</Link></li>
          </ul>
        </nav>
        <div className="auth-buttons">
        <Link to="/profil"><button>Ayyunie</button></Link>
        </div>
      </header>

    <div className="bayar-page">
      <main className="payment-details">
        <div className="title">
          <h1>Rincian Pembayaran</h1>
        </div>
        <div className="card">
          <div className="doctor-info">
            <img src="assets/images/expert2.png" alt="Dr. Syarif, Sp.KK" className="doctor-photo" />
            <div className="doctor-details">
              <strong>dr. Emy Kusumaningsih, Sp.Dv</strong>
              <p>Spesialis Dermatovenereologi Estetika</p>
            </div>
          </div>
          <div className="price-info">
            <p>Biaya sesi 30 menit</p>
            <span>Rp. 75.000</span>
          </div>
          <div className="price-info">
            <p>Biaya layanan</p>
            <span>Rp. 2.000</span>
          </div>
          <div className="total-price">
            <strong>Total Pembayaranmu</strong>
            <span>Rp. 77.000</span>
          </div>
          <Link to="/Opsi_Bayar">
            <button className="pay-button">Bayar</button>
          </Link>
        </div>
      </main>
    </div>
    
    {/* footer */}
    <div className="footer-separator"></div>
    <footer className="aboutus-footer">
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
              <p><Link to="/profil">Profil</Link></p>
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

export default Rincianbayar;
