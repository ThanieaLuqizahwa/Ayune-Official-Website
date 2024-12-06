import React from 'react';
import { IoMdArrowDropright } from 'react-icons/io';
import { Link } from 'react-router-dom';

const ProdukSunscreen = () => {
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
        {/* Section Sunscreen */}
        <section>
          <div className='flex justify-center px-[120px] py-[6px] bg-[#E3F2ED]'>
            <p className='text-[#4A4A4A] text-[24px] font-bold'>Sunscreen</p>
          </div>
          <div className=''></div>
          <div className='grid grid-cols-5 gap-x-[61px] gap-y-[10px] px-[120px]   py-[51px] bg-white'>
          <Link to={'/Produk/Sunscreen/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/azarinesun.png" alt="AZARINE" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>AZARINE</p>
                  <p>Hydracool Ceraspray Sunscreen.</p>
                  <p>Rp65.000 - Rp71.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Sunscreen/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/bioresun.png" alt="BIORE" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>BIORE</p>
                  <p>UV Fresh & Bright Instant Cover...</p>
                  <p>Rp38.000 - Rp41.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Sunscreen/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/eminasun.png" alt="EMINA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>EMINA</p>
                  <p>Skin Buddy Sun Protection...</p>
                  <p>Rp38.000 - Rp42.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Sunscreen/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/truesun.png" alt="TRUE TO SKIN" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>TRUE TO SKIN</p>
                  <p>Sunfriends Soothing Sunscreen</p>
                  <p>Rp78.000 - Rp83.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Sunscreen/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/wardahsun.png" alt="WARDAH" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>WARDAH</p>
                  <p>UV Shield Aqua Fresh Essence...</p>
                  <p>Rp61.000 - Rp66.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Serum/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/npuresun.png" alt="NPURE" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>NPURE</p>
                  <p>AcnCica Beat The Sun Spraye...</p>
                  <p>Rp62.000 - Rp80.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Serum/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/cetaphilsun.png" alt="CETAPHIL" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>CETAPHIL</p>
                  <p>UVA/UVB Defense Spf50++</p>
                  <p>Rp240.000 - Rp265.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Serum/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/skinsun.png" alt="SKIN AQUA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>SKIN AQUA</p>
                  <p>UV Moisture Milk SPF50 PA ++</p>
                  <p>Rp68.000 - Rp71.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Serum/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/laboresun.png" alt="LABORE" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>LABORE</p>
                  <p>Sensitive Skin Care Biome Protect</p>
                  <p>Rp59.000 - Rp66.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Serum/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/amaterasun.png" alt="AMATERASUN" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>AMATERASUN</p>
                  <p>Physical Sunscreen SPF 50+...</p>
                  <p>Rp79.000 - Rp99.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Serum/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/subella.png" alt="SUNBELLA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>SUNBELLA</p>
                  <p>Micellar Water Rose Cleanse</p>
                  <p>Rp37.000 - Rp38.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Serum/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className=' h-[261px] w-[261px] object-contain' src="/assets/images/ss/dermasun.png" alt="DERMALUZ" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>DERMALUZ</p>
                  <p>MicellAir Pearl Bright</p>
                  <p>Rp64.000 - Rp72.000</p>
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
              <p><Link to="/Login">Masuk</Link></p>
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

export default ProdukSunscreen