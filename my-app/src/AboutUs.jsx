import React from 'react';
import { Link } from 'react-router-dom';
import './file_css/aboutus.css'; // Make sure the CSS path is correct

const AboutUs = () => {
  return (
    <div className="about-page-container">
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

      <main>
        <section>
          <div className="about-us">
            <h1>Tentang Kami</h1>
          </div>
          <div className="content-aboutus">
            <p>
              Ayune hadir sebagai platform konsultasi skincare yang didedikasikan
              untuk membantu Anda memahami kebutuhan kulit dengan lebih baik. 
              Didirikan pada tahun 2024, kami berkomitmen untuk memberikan
              panduan profesional dan personal dari para ahli dermatologi berpengalaman,
              khususnya bagi mereka yang masih awam di dunia perawatan kulit.
              Dalam setiap sesi konsultasi, Anda akan didampingi oleh dokter kulit 
              yang memiliki pengetahuan mendalam tentang berbagai masalah kulit, mulai
              dari jerawat, hiperpigmentasi, penuaan dini, hingga perawatan kulit 
              sehari-hari. Kami memahami bahwa setiap jenis kulit memiliki kebutuhan
              yang berbeda, oleh karena itu, solusi yang kami tawarkan selalu
              disesuaikan dengan kondisi dan tujuan perawatan Anda.
              Kami percaya bahwa kulit sehat adalah investasi jangka panjang, dan kami
              hadir untuk membantu Anda menemukan produk dan rutinitas perawatan
              yang tepat.
            </p>
          </div>
          <div className="content-welcome">
            <p>Selamat datang di Ayune, tempat di mana perjalanan kulit sehat Anda dimulai!</p>
          </div>
        </section>
      </main>

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

export default AboutUs;
