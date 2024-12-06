import React from "react";
import { Link, useNavigate } from "react-router-dom";
import "./file_css/ulasan_produk.css"; // Make sure the CSS path is correct

const ulasan_produk = () => {
  const [showPopup, setShowPopup] = useState(false); // State untuk mengontrol pop-up
  const navigate = useNavigate();

  const handleCopyClick = () => {
    setShowPopup(true); // Menampilkan pop-up
  };

  const handleRedirect = () => {
    navigate("/consul"); // Mengarahkan ke halaman consul
  };
  return (
    <div className="ulasanahli_page">
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
              <Link to="#">PRODUK</Link>
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

      {/* content */}
      <main>
        <h1>Berikan Ulasan</h1>
        <section class="form-section">
          <label>Dimana anda membeli produk tersebut?</label>
          <div class="options">
            <button class="option" onclick="selectOption(this)">
              Online
            </button>
            <button class="option" onclick="selectOption(this)">
              Offline
            </button>
            <button class="option" onclick="selectOption(this)">
              Lainnya
            </button>
          </div>
          <label for="review">Tuliskan ulasan anda</label>
          <textarea
            id="review"
            placeholder="Beritahu kepada pengguna lain bagaimana pengalaman anda menggunakan produk ini, bagaimana efek nya? ..."
          ></textarea>
          <label>Berikan bintang</label>
          <div class="stars" id="starRating">
            <input type="radio" name="star" id="star1" />
            <label for="star1">★</label>
            <input type="radio" name="star" id="star2" />
            <label for="star2">★</label>
            <input type="radio" name="star" id="star3" />
            <label for="star3">★</label>
            <input type="radio" name="star" id="star4" />
            <label for="star4">★</label>
            <input type="radio" name="star" id="star5" />
            <label for="star5">★</label>
          </div>

          <label>Apakah anda merekomendasikan produk ini?</label>
          <div class="recommend">
            <button class="option" onclick="selectOption(this)">
              Ya
            </button>
            <button class="option" onclick="selectOption(this)">
              Tidak
            </button>
          </div>

          <button class="submit-button" onclick="showsuccessPopup()">
            Unggah
          </button>
        </section>
      </main>

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

export default ulasan_produk;
