import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import "./file_css/opsibayar.css"; // Pastikan path CSS benar

const Opsibayar = () => {
  const [activeTab, setActiveTab] = useState("electronic");
  const navigate = useNavigate(); // Inisialisasi useNavigate

  const handleTabChange = (tab) => {
    setActiveTab(tab);
  };

  // Fungsi untuk menavigasi berdasarkan pilihan
  const handlePayment = () => {
    if (activeTab === "electronic") {
      navigate("/qr"); // Navigasi ke halaman QR jika memilih Uang Elektronik
    } else if (activeTab === "bank-transfer") {
      navigate("/va"); // Navigasi ke halaman Va jika memilih Transfer Bank
    }
  };

  return (
    <div className="opsibayar-page">
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
              <Link to="/Produk">PRODUK</Link>
            </li>
            <li>
              <Link to="/Ahli">KONSULTASI</Link>
            </li>
          </ul>
        </nav>
        <div className="auth-buttons">
          <Link to="/profil">
            <button>PROFIL</button>
          </Link>
        </div>
      </header>

      {/* Content */}
      <main>
        <div className="title">
          <h1>Opsi Pembayaran</h1>
        </div>

        <div className="payment-details">
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

          <div className="option-group">
            <div className="option">
              <div className="coins-name">
                <h3>AYUNE COINS</h3>
              </div>
              <div className="coins-total">
                <p>Saldo</p>
                <p>Rp. 185.000</p>
              </div>
              <input type="radio" name="payment-method" value="coins" />
            </div>

            <div className="tab-container">
              <button
                className={`tab-button ${
                  activeTab === "electronic" ? "active" : ""
                }`}
                onClick={() => handleTabChange("electronic")}
              >
                Uang Elektronik
              </button>
              <button
                className={`tab-button2 ${
                  activeTab === "bank-transfer" ? "active" : ""
                }`}
                onClick={() => handleTabChange("bank-transfer")}
              >
                Transfer Bank
              </button>
            </div>

            <div className="payment-options">
              {activeTab === "electronic" && (
                <div id="electronic" className="tab-content active">
                  {/* Pilihan Uang Elektronik */}
                  <div className="option">
                    <img src="assets/images/gopay.png" alt="Gopay" />
                    <p>Gopay</p>
                    <input type="radio" name="payment-method" value="gopay" />
                  </div>
                  <div className="option">
                    <img src="assets/images/spay.png" alt="ShopeePay" />
                    <p>ShopeePay</p>
                    <input type="radio" name="payment-method" value="spay" />
                  </div>
                  <div className="option">
                    <img src="assets/images/ovo.png" alt="OVO" />
                    <p>OVO</p>
                    <input type="radio" name="payment-method" value="ovo" />
                  </div>
                  <div className="option">
                    <img src="assets/images/dana.svg" alt="Dana" />
                    <p>Dana</p>
                    <input type="radio" name="payment-method" value="dana" />
                  </div>
                </div>
              )}

              {activeTab === "bank-transfer" && (
                <div id="bank-transfer" className="tab-content active">
                  {/* Pilihan Transfer Bank */}
                  <div className="option">
                    <img src="assets/images/bca.png" alt="BCA" />
                    <p>BCA</p>
                    <input type="radio" name="payment-method" value="bca" />
                  </div>
                  <div className="option">
                    <img src="assets/images/bri.png" alt="BRI" />
                    <p>BRI</p>
                    <input type="radio" name="payment-method" value="bri" />
                  </div>
                  <div className="option">
                    <img src="assets/images/bni.png" alt="BNI" />
                    <p>BNI</p>
                    <input type="radio" name="payment-method" value="bni" />
                  </div>
                  <div className="option">
                    <img src="assets/images/mandiri.png" alt="Mandiri" />
                    <p>Mandiri</p>
                    <input type="radio" name="payment-method" value="mandiri" />
                  </div>
                </div>
              )}

              <button className="pay-button" onClick={handlePayment}>
                Bayar
              </button>
            </div>
          </div>
        </div>
      </main>

      <div className="footer-separator"></div>

      {/* Footer */}
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
          <p>©AYUNNE, 2024. ALL RIGHTS RESERVED</p>
        </div>
      </footer>
    </div>
  );
};

export default Opsibayar;
