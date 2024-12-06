import React from 'react';
import { IoMdArrowDropright } from 'react-icons/io';
import { Link } from 'react-router-dom';

const ProdukPelembap = () => {
  return (
    <div className="profile-page">
      <header>
        <div className="logo">
          <img src="/assets/images/logobesar.svg" alt="Logo Ayune" />
        </div>
        <nav>
          <ul>
            <li><Link to="/">BERANDA</Link></li>
            <li><Link to="/AboutUs_Login">TENTANG KAMI</Link></li>
            <li><Link to="/Produk">PRODUK</Link></li>
            <li><Link to="/Ahli">KONSULTASI</Link></li>
          </ul>
        </nav>
        <div className="auth-buttons">
          <Link to="/profil"><button>Ayyunie</button></Link>
        </div>
      </header>
      <div className='space-y-[30px] bg-white'>
        {/* Section Search Produk */}
        <section className='bg-[#E3F2ED] py-[5px]'>
          <div className='flex gap-[89px] px-[120px] justify-center'>
            <p className='text-[#4A4A4A] text-[40px] font-bold'>PRODUK</p>
          </div>
        </section>
        {/* Section Pelembap */}
        <section>
          <div className='flex justify-center px-[120px] py-[6px] bg-[#E3F2ED]'>
            <p className='text-[#4A4A4A] text-[24px] font-bold'>Pelembap</p>
          </div>
          <div className=''></div>
          <div className='grid grid-cols-5 gap-x-[61px] gap-y-[10px] px-[120px]   py-[51px] bg-white'>
            <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/youpelembap.png" alt="Y.O.U" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>Y.O.U</p>
                  <p>Acneplus Multi Action Cream</p>
                  <p>Rp45.000 - Rp56.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/halepelembap.png" alt="HALE" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>HALE</p>
                  <p>Fountain Of th</p>
                  <p>Rp139.000 - Rp145.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/cetaphilpelembap.png" alt="CETAPHIL" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>CETAPHIL</p>
                  <p>Moisturising Cream</p>
                  <p>Rp360.000 - Rp375.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/gorjespelembap.png" alt="GORJES" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>GORJES</p>
                  <p>Magnificent Ace Moisturizer</p>
                  <p>Rp240.000 - Rp244.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/studiopelembap.png" alt="STUDIO TROPIK" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>STUDIO TROPIK</p>
                  <p>Rich Skin Barrier Cream</p>
                  <p>Rp199.000 - Rp219.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/halepelembap.png" alt="HALE" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>HALE</p>
                  <p>All Rounder</p>
                  <p>Rp110.000 - Rp130.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/g2gpelembap.png" alt="GLAD2GLOW" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>GLAD2GLOW</p>
                  <p>Peach Retinol Moisturizer</p>
                  <p>Rp48.000 - Rp54.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/g2gpelembap2.png" alt="GLAD2GLOW" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>GLAD2GLOW</p>
                  <p>Kiwi 3D Acid Acne Moisturizer</p>
                  <p>Rp48.000 - Rp54.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/eminapelembap.png" alt="EMINA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>EMINA</p>
                  <p>Bright Stuff Tone Up Cream</p>
                  <p>Rp20.000 - Rp27.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/cetaphilpelembap2.png" alt="CETAPHIL" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>CETAPHIL</p>
                  <p>Moisturizing Lotion</p>
                  <p>Rp160.000 - Rp190.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/elvictopelembap.png" alt="ELVICTO" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>ELVICTO</p>
                  <p>Barrier Up Moisturizer</p>
                  <p>Rp77.000 - Rp100.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pelembap/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/pelembap/bhumipelembap.png" alt="BHUMI" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>BHUMI</p>
                  <p>G-Alpine Hydralock Moisturizer</p>
                  <p>Rp183.000 - Rp220.000</p>
                </div>
              </Link>
          </div>
        </section>
      </div>

      <footer className="aboutus-footer">
        <div className="footer-separator"></div>
        <div className="footer-container">
          <div className="footer-logo">
            <img src="/assets/images/logobesar.svg" alt="Logo Ayune" />
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
              <p><Link to="/login">Masuk</Link></p>
            </div>
            <div className="social-media">
              <h3>Ikuti Kami:</h3>
              <div className="social-icons">
                <a href="#"><img src="/assets/images/instagram.png" alt="Instagram" /></a>
                <a href="#"><img src="/assets/images/twt.png" alt="Twitter" /></a>
                <a href="#"><img src="/assets/images/yt.png" alt="YouTube" /></a>
              </div>
            </div>
          </div>
        </div>
        <div className="footer-bottom">
          <p>©AYUNNE, 2024. ALL RIGHTS RESERVED</p>
        </div>
      </footer>
    </div>
  )
}

export default ProdukPelembap