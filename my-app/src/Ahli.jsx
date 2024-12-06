import React from "react";
import { Link } from "react-router-dom";
import "./file_css/pilihahli.css"; // Pastikan path CSS benar

const Ahli = () => {
  const inputId = "searchInput"; // Definisikan inputId

  const handleSearchInput = (event) => {
    console.log("Input value:", event.target.value); // Log input value ke konsol
  };

  return (
    <div className="ahli-page-container">
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
              <Link to="/Produk">PRODUK</Link>
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

      {/* Content */}
      <main>
        <div className="title">
          <div className="">
            <h1>Pilih Ahli</h1>
          </div>
          <ul>
            <li>
              <input
                type="text"
                name="search"
                id={inputId}
                placeholder="Temukan ahli untuk mengetahui kondisi kulit anda..."
                onChange={handleSearchInput}
              />
            </li>
          </ul>
        </div>

        <div className="sub-title">
          <div className="sub-title-h2">
            <h2>Rekomendasi Ahli</h2>
          </div>
          <div className="sub-title-h4">
            <h4>Pilih ahli kulit yang sesuai dengan kebutuhan anda</h4>
          </div>
        </div>

        {/* Card Ahli */}
        <div className="all-cards">
          {/* Expert 1 */}
          {/* <Link to="/rincianbayar"> */}
          <div className="expert-card">
            <img
              src="assets/images/expert1.png"
              alt="Dr. Syarif, Sp.KK"
              className="expert-photo"
            />
            <div className="expert-info">
              <h3>dr. Syarif, Sp.KK</h3>
              <p className="specialty">Spesialis Anti-aging</p>
              <div className="card-details">
                <div className="experience">
                  <span>📅</span>
                  <span>3 Tahun</span>
                </div>
                <div className="rating">
                  <span>⭐</span>
                  <span>4.9/5.0</span>
                </div>
              </div>
              <div className="availability">
                Tersedia senin - sabtu 09:00 - 20:00
              </div>
              <p className="price">Rp 45.000</p>
            </div>
            <button className="status offline">Tidak Aktif</button>
          </div>
          {/* </Link> */}

          {/* Expert 2 */}
          <Link to="/rincianbayar">
            <div className="expert-card">
              <img
                src="assets/images/expert2.png"
                alt="dr. Emy Kusumaningsih, Sp.DV"
                className="expert-photo"
              />
              <div className="expert-info">
                <h3>dr. Emy Kusumaningsih, Sp.DV</h3>
                <p className="specialty">
                  Spesialis Dermatovenereologi Estetika
                </p>
                <div className="card-details">
                  <div className="experience">
                    <span>📅</span>
                    <span>7 Tahun</span>
                  </div>
                  <div className="rating">
                    <span>⭐</span>
                    <span>5.0/5.0</span>
                  </div>
                </div>
                <div className="availability">
                  Tersedia senin - sabtu 09:00 - 20:00
                </div>
                <p className="price">Rp 75.000</p>
              </div>
              <button className="status online">Aktif</button>
            </div>
          </Link>

          {/* Expert 3 */}
          {/* <Link to="/rincianbayar"> */}
          <div className="expert-card">
            <img
              src="assets/images/expert3.png"
              alt="dr. Michael Jackson Sp.KK"
              className="expert-photo"
            />
            <div className="expert-info">
              <h3>dr. Michael Jackson Sp.KK</h3>
              <p className="specialty">Spesialis Kulit & Kelamin</p>
              <div className="card-details">
                <div className="experience">
                  <span>📅</span>
                  <span>6 Tahun</span>
                </div>
                <div className="rating">
                  <span>⭐</span>
                  <span>4.7/5.0</span>
                </div>
              </div>
              <div className="availability">
                Tersedia senin - sabtu 09:00 - 20:00
              </div>
              <p className="price">Rp 55.000</p>
            </div>
            <button className="status offline">Tidak Aktif</button>
          </div>
          {/* </Link> */}

          {/* Expert 4 */}
          <Link to="/rincianbayar">
            <div className="expert-card">
              <img
                src="assets/images/expert5.png"
                alt="dr. Anatasya, Sp.KK"
                className="expert-photo"
              />
              <div className="expert-info">
                <h3>dr. Anatasya, Sp.KK</h3>
                <p className="specialty">Spesialis Kulit Kusam, Pigmentasi</p>
                <div className="card-details">
                  <div className="experience">
                    <span>📅</span>
                    <span>3 Tahun</span>
                  </div>
                  <div className="rating">
                    <span>⭐</span>
                    <span>4.7/5.0</span>
                  </div>
                </div>
                <div className="availability">
                  Tersedia senin - sabtu 09:00 - 20:00
                </div>
                <p className="price">Rp 35.000</p>
              </div>
              <button className="status online">Aktif</button>
            </div>
          </Link>

          {/* Expert 5 */}
          <Link to="/rincianbayar">
            <div className="expert-card">
              <img
                src="assets/images/expert6.png"
                alt="dr. Clara, Sp.KK"
                className="expert-photo"
              />
              <div className="expert-info">
                <h3>dr. Clara, Sp.KK</h3>
                <p className="specialty">Spesialis Kulit Sensitif, Alergi</p>
                <div className="card-details">
                  <div className="experience">
                    <span>📅</span>
                    <span>4 Tahun</span>
                  </div>
                  <div className="rating">
                    <span>⭐</span>
                    <span>5.0/5.0</span>
                  </div>
                </div>
                <div className="availability">
                  Tersedia senin - sabtu 09:00 - 20:00
                </div>
                <p className="price">Rp 65.000</p>
              </div>
              <button className="status online">Aktif</button>
            </div>
          </Link>

          {/* Expert 6 */}
          {/* <Link to="/rincianbayar"> */}
          <div className="expert-card">
            <img
              src="assets/images/expert7.png"
              alt="dr. Hana, Sp.KK"
              className="expert-photo"
            />
            <div className="expert-info">
              <h3>dr. Hana, Sp.KK</h3>
              <p className="specialty">
                Spesialis Kulit Ibu Hamil, Stretch Mark
              </p>
              <div className="card-details">
                <div className="experience">
                  <span>📅</span>
                  <span>3 Tahun</span>
                </div>
                <div className="rating">
                  <span>⭐</span>
                  <span>4.8/5.0</span>
                </div>
              </div>
              <div className="availability">
                Tersedia senin - sabtu 09:00 - 20:00
              </div>
              <p className="price">Rp 50.000</p>
            </div>
            <button className="status offline">Tidak Aktif</button>
          </div>
          {/* </Link> */}

          {/* Expert 7 */}
          {/* <Link to="/rincianbayar"> */}
          <div className="expert-card">
            <img
              src="assets/images/expert 8.png"
              alt="dr. Citra, Sp.KK"
              className="expert-photo"
            />
            <div className="expert-info">
              <h3>dr. Citra, Sp.KK</h3>
              <p className="specialty">Spesialis jerawat, Bekas Jerawat</p>
              <div className="card-details">
                <div className="experience">
                  <span>📅</span>
                  <span>4 Tahun</span>
                </div>
                <div className="rating">
                  <span>⭐</span>
                  <span>4.8/5.0</span>
                </div>
              </div>
              <div className="availability">
                Tersedia senin - sabtu 09:00 - 20:00
              </div>
              <p className="price">Rp 55.000</p>
            </div>
            <button className="status offline">Tidak Aktif</button>
          </div>
          {/* </Link> */}

          {/* Expert 8 */}
          <Link to="/rincianbayar">
            <div className="expert-card">
              <img
                src="assets/images/expert9.png"
                alt="dr. Erlina, Sp.KK"
                className="expert-photo"
              />
              <div className="expert-info">
                <h3>dr. Erlina, Sp.KK</h3>
                <p className="specialty">Spesialis Keloid, Bekas Luka</p>
                <div className="card-details">
                  <div className="experience">
                    <span>📅</span>
                    <span>2 Tahun</span>
                  </div>
                  <div className="rating">
                    <span>⭐</span>
                    <span>4.9/5.0</span>
                  </div>
                </div>
                <div className="availability">
                  Tersedia senin - sabtu 09:00 - 20:00
                </div>
                <p className="price">Rp 55.000</p>
              </div>
              <button className="status online">Aktif</button>
            </div>
          </Link>

          {/* Expert 9 */}
          <Link to="/rincianbayar">
            <div className="expert-card">
              <img
                src="assets/images/expert10.png"
                alt="dr. Andriana, Sp.KK"
                className="expert-photo"
              />
              <div className="expert-info">
                <h3>dr. Andriana, Sp.KK</h3>
                <p className="specialty">
                  Spesialis Kulit Kusam & Penuaan Dini
                </p>
                <div className="card-details">
                  <div className="experience">
                    <span>📅</span>
                    <span>5 Tahun</span>
                  </div>
                  <div className="rating">
                    <span>⭐</span>
                    <span>4.9/5.0</span>
                  </div>
                </div>
                <div className="availability">
                  Tersedia senin - sabtu 09:00 - 20:00
                </div>
                <p className="price">Rp 60.000</p>
              </div>
              <button className="status online">Aktif</button>
            </div>
          </Link>
        </div>
      </main>

      {/* Footer */}
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

export default Ahli;
