import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import "./file_css/va.css"; // Pastikan path CSS benar

const Va = () => {
  const [showPopup, setShowPopup] = useState(false); // State untuk mengontrol pop-up
  const navigate = useNavigate();

  const handleCopyClick = () => {
    console.log("Tombol Bayar ditekan"); // Menambahkan console.log untuk memastikan tombol ditekan
    setShowPopup(true); // Menampilkan pop-up
  };

  const handleRedirect = () => {
    navigate("/consul"); // Mengarahkan ke halaman consul
  };

  // Set initial time for 24 hours in seconds
  const [timeLeft, setTimeLeft] = useState(86400);

  // Timer function to decrement time every second
  useEffect(() => {
    if (timeLeft > 0) {
      const timer = setInterval(() => {
        setTimeLeft((prevTime) => prevTime - 1);
      }, 1000);
      return () => clearInterval(timer);
    }
  }, [timeLeft]);

  // Function to format time in HH:MM:SS
  const formatTime = (seconds) => {
    const hours = String(Math.floor(seconds / 3600)).padStart(2, "0");
    const minutes = String(Math.floor((seconds % 3600) / 60)).padStart(2, "0");
    const remainingSeconds = String(seconds % 60).padStart(2, "0");
    return `${hours}:${minutes}:${remainingSeconds}`;
  };

  return (
    <div className="va-page">
      {/* Header */}
      <header>
        <div className="logo">
          <img src="assets/images/logobesar.svg" alt="Logo Ayune" />
        </div>
        <nav>
          <ul>
            <li>
              <Link to="/HomeAfterLogin">BERANDA</Link>
            </li>
            <li>
              <Link to="/AboutUs_Login">TENTANG KAMI</Link>
            </li>
            <li>
              <Link to="Produk">PRODUK</Link>
            </li>
            <li>
              <Link to="/Ahli">KONSULTASI</Link>
            </li>
          </ul>
        </nav>
        <div className="auth-buttons">
          <Link to="/profil">
            <button>Ayyunie</button>
          </Link>
        </div>
      </header>

      {/* Main Content */}
      <main>
        <div className="title">
          <h1>Ayo Bayar</h1>
        </div>

        <div className="total">
          <div className="grid-kiri">
            <h4>Total Tagihan</h4>
            <h2>Pembayaranmu</h2>
          </div>
          <div className="grid-kanan">
            <h4>Rp77.000</h4>
            <h2>Rp77.000</h2>
          </div>
        </div>
        <div className="virtual-account-section">
          <p>
            Mohon pastikan Anda telah membaca dan memahami{" "}
            <a href="#">Syarat & Ketentuan</a> serta{" "}
            <a href="#">Kebijakan Privasi</a> kami sebelum melanjutkan
            pembayaran. Setelah pembayaran berhasil, transaksi dianggap final
            dan tidak dapat dikembalikan.
          </p>
          <h4>Waktu Tersisa:</h4>
          <h2 id="timer">{formatTime(timeLeft)}</h2> {/* Timer display */}
          <br />
          <div className="va-detail">
            <h4>Kode Virtual Account:</h4>
            <h1 className="virtual-account-number">1234567891000001</h1>
          </div>
          <p className="bila">
            Bila sudah melakukan pembayaran harap refresh halaman web
          </p>
        </div>
        <div className="virtual-account-section">
          <button type="button" className="copy-btn" onClick={handleCopyClick}>
            BAYAR
          </button>
        </div>
      </main>

      {/* Popup */}
      {showPopup && (
        <div id="secondPopup" className="popup-overlay">
          <div className="popup-content">
            <div className="popup-header">Pembayaran Berhasil!</div>
            <div className="popup-title">
              <img
                src="assets/images/iconbayar.png"
                alt="Pembayaran Berhasil"
                className="popup-image"
              />
            </div>
            <div className="popup-button-container">
              <button className="copy-btn" onClick={handleRedirect}>
                Mulai Sesi
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Footer */}
      <div className="footer-separator"></div>
      <footer>
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
                <strong>Jam operasional:</strong>
                <br />
                Senin-Jumat: 10:00 - 21:00 WIB
                <br />
                Sabtu: 10:00 - 17:00 WIB
              </p>
            </div>
            <div className="account">
              <h3>Akun Saya</h3>
              <p>
                <Link to="/profil">Profil</Link>
              </p>
              <p>
                <Link to="/signup">Daftar</Link>
              </p>
              <p>
                <Link to="/Login">Masuk</Link>
              </p>
            </div>
            <div className="social-media">
              <h3>Ikuti Kami:</h3>
              <div className="social-icons">
                <a href="#">
                  <img src="assets/images/instagram.png" alt="Instagram" />
                </a>
                <a href="#">
                  <img src="assets/images/twt.png" alt="Twitter" />
                </a>
                <a href="#">
                  <img src="assets/images/yt.png" alt="YouTube" />
                </a>
              </div>
            </div>
          </div>
        </div>
        <div className="footer-bottom">
          <p>©AYUNNE, 2024. SEMUA HAK DILINDUNGI</p>
        </div>
      </footer>
    </div>
  );
};

export default Va;
