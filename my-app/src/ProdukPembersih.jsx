import React from 'react';
import { IoMdArrowDropright } from 'react-icons/io';
import { Link } from 'react-router-dom';

const ProdukPembersih = () => {
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
        {/* Section Toner */}
        <section>
          <div className='flex justify-center px-[120px] py-[6px] bg-[#E3F2ED]'>
            <p className='text-[#4A4A4A] text-[24px] font-bold'>Pembersih</p>
          </div>
          <div className=''></div>
          <div className='grid grid-cols-5 gap-x-[61px] gap-y-[10px] px-[120px]   py-[51px] bg-white'>
            <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                    <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/senkapembersih.png" alt="SENKA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                    <p className='text-[#147A63] font-extrabold'>SENKA</p>
                    <p>Senka Perfect Whip Berry</p>
                    <p>Rp72.000 - Rp80.000</p>
                </div>
            </Link>
            <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/cetaphilpembersih.png" alt="CETAPHIL" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>CETAPHIL</p>
                  <p>Daily Facial Cleanserr</p>
                  <p>Rp212.000 - Rp220.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/eminapembersih.png" alt="EMINA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>EMINA</p>
                  <p>Bright Stuff Face Wash 100 ml</p>
                  <p>Rp30.000 - Rp33.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/skintificpembersih.png" alt="SKINTIFIC" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>SKINTIFIC</p>
                  <p>3X Acid Acne Gel Cleanser</p>
                  <p>Rp110.000 - Rp115.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/breyleepembersih.png" alt="BREYLEE" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>BREYLEE</p>
                  <p>Step 1 Blackhead Remover Mask</p>
                  <p>Rp72.000 - Rp80.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/elvictopembersih.png" alt="ELVICTO" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>ELVICTO</p>
                  <p>Acne Fight Face Wash</p>
                  <p>Rp62.000 - Rp80.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/avoskinpembersih.png" alt="AVOSKIN" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>AVOSKIN</p>
                  <p>Natural Sublime Facial Cleanser</p>
                  <p>Rp107.000 - Rp139.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/hadalabopembersih.png" alt="HADA LABO" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>HADA LABO</p>
                  <p>Shirojyun Whitening Face Wash</p>
                  <p>Rp49.000 - Rp52.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/niveapembersih.png" alt="NIVEA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>NIVEA</p>
                  <p>MicellAir Oil & Acne Care</p>
                  <p>Rp71.000 - Rp101.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/garnierpembersih.png" alt="GARNIER" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>GARNIER</p>
                  <p>Micellar Water Salicylic Blue</p>
                  <p>Rp37.000 - Rp38.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/garnierpembersih2.png" alt="GARNIER" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>GARNIER</p>
                  <p>Micellar Water Rose Cleanse</p>
                  <p>Rp37.000 - Rp38.000</p>
                </div>
              </Link>
              <Link to={'/Produk/Pembersih/Deskripsi'} className='space-y-[16px] '>
                <div className='flex justify-center'>
                  <img className='object-contain h-[261px] w-[261px]' src="/assets/images/pembersih/niveapembersih2.png" alt="NIVEA" />
                </div>
                <div className='text-[#4A4A4A] text-[12px]'>
                  <p className='text-[#147A63] font-extrabold'>NIVEA</p>
                  <p>MicellAir Pearl Bright</p>
                  <p>Rp72.000 - Rp100.000</p>
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

export default ProdukPembersih