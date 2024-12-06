import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import './file_css/profil.css';

const ProfilePage = ({ user }) => {
  const [showPopup, setShowPopup] = useState(false);
  const navigate = useNavigate();
  
  const [selectedSkinTypeId, setSelectedSkinTypeId] = useState('');
  const [selectedSkinProblemId, setSelectedSkinProblemId] = useState('');

  const togglePopup = () => {
    setShowPopup(!showPopup);
  };

  const handleLogout = () => {
    navigate('/');
  };

  // Fungsi untuk mengambil data profil
  useEffect(() => {
    const fetchProfileData = async () => {
      try {
        const response = await fetch(`http://localhost:5000/api/user/profile/${user.id}`);

        if (!response.ok) {
          throw new Error('Failed to fetch profile data');
        }

        const data = await response.json();
        setSelectedSkinTypeId(data.id_tipe_kulit); // Sesuaikan state untuk menyimpan ID tipe kulit
        setSelectedSkinProblemId(data.id_masalah_kulit); // Sesuaikan state untuk menyimpan ID masalah kulit
      } catch (error) {
        console.error('Error fetching profile data:', error);
      }
    };

    fetchProfileData();
  }, [user.id]);

  // Fungsi untuk menyimpan data profil
  const handleSaveProfile = async () => {
    const profileData = {
      userId: user.id,
      id_tipe_kulit: selectedSkinTypeId,
      id_masalah_kulit: selectedSkinProblemId,
    };

    try {
      const response = await fetch('http://localhost:5000/api/user/profile', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(profileData),
      });

      if (!response.ok) {
        throw new Error('Failed to update profile');
      }

      const result = await response.json();
      console.log(result.message);
    } catch (error) {
      console.error('Error updating profile:', error);
    }
  };

  return (
    <div className="profile-page">
      {/* Header */}
      <header>
        <div className="logo">
          <img src="assets/images/logobesar.svg" alt="Logo Ayune" />
        </div>
        <nav>
          <ul>
            <li><Link to="/HomeAfterLogin">BERANDA</Link></li>
            <li><Link to="/AboutUs_Login">TENTANG KAMI</Link></li>
            <li><Link to="/Produk">PRODUK</Link></li>
            <li><Link to="/Ahli">KONSULTASI</Link></li>
          </ul>
        </nav>
        <div className="auth-buttons">
          <Link to="/profil"><button>Ayyunie</button></Link>
        </div>
      </header>

      {/* Content */}
      <div className="header-divider">
        <span className="header-divider-text">Profil</span>
      </div>
      <div className="luar">
        <div className="profile-container">
          <div className="profile-sidebar">
            <div className="profile-coin-container">
              <div className="profile-picture">
                <img src="assets/images/emptyprofile.png" alt="Edit Profile" />
                <p>Edit Profil</p>
              </div>
              <div className="profile-info">
                <h3>AYUNE COINS</h3>
                <p>Saldo &nbsp; <strong>185.000</strong></p>
              </div>
            </div>
            <form className="profile-info">
              <label htmlFor="name">Nama</label>
              <input id="name" type="text" placeholder="Masukan nama anda" />

              <label htmlFor="email">Email</label>
              <input id="email" type="email" placeholder="Masukan Email anda" />

              <label htmlFor="phone">Nomor Telepon</label>
              <input id="phone" type="text" placeholder="Masukan Nomor Telepon Anda" />

              <label htmlFor="dob">Tanggal Lahir</label>
              <input id="dob" type="text" placeholder="Masukan Tanggal Lahir Anda (DD/MM/YYYY)" />

              <label htmlFor="gender">Jenis Kelamin</label>
              <input id="gender" type="text" placeholder="Masukan Gender Anda" />

              <button type="button" className="logout-btn" onClick={togglePopup}>
                Keluar Akun
              </button>
            </form>
          </div>

          <div className="profile-main">
            <h1 className="section-title">Profil Kulit</h1>
            <form className="skin-profile">
              <label htmlFor="skinType">Tipe Kulit:</label>
              <select id="skinType" value={selectedSkinTypeId} onChange={(e) => setSelectedSkinTypeId(e.target.value)}>
                {/* Opsi tipe kulit */}
                <option value="1">Kulit Kering</option>
                <option value="2">Kulit Berminyak</option>
                <option value="3">Kulit Kombinasi</option>
              </select>

              <label htmlFor="skinConcerns">Masalah Kulit:</label>
              <select id="skinConcerns" value={selectedSkinProblemId} onChange={(e) => setSelectedSkinProblemId(e.target.value)}>
                {/* Opsi masalah kulit */}
                <option value="1">Jerawat</option>
                <option value="2">Pori-Pori Besar</option>
                <option value="3">Noda Hitam</option>
              </select>

              <button type="button" onClick={handleSaveProfile}>Simpan Profil</button>
            </form>
          </div>
        </div>
      </div>

      {showPopup && (
        <div className="popup-overlay">
          <div className="popup-content">
            <div className="popup-header">Anda Yakin Ingin Keluar?</div>
            <div className="popup-button-container">
              <button className="popup-button btn-cancel" onClick={togglePopup}>Batal</button>
              <button className="popup-button btn-exit" onClick={handleLogout}>Keluar</button>
            </div>
          </div>
        </div>
      )}

      {/* Footer */}
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

export default ProfilePage;