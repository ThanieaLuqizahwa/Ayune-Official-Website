import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { usePayment } from "./PaymentContext";
import Header from "./components/HeaderAfterLogin";
import Footer from "./components/Footer";
import "./file_css/opsibayar.css";

const Opsibayar = () => {
  const { totalPayment } = usePayment(); // Ambil totalPayment dari Context
  const [activeTab, setActiveTab] = useState("electronic");
  const [selectedMethod, setSelectedMethod] = useState("");
  const navigate = useNavigate();

  const handleTabChange = (tab) => {
    setActiveTab(tab); // Ubah tab yang aktif
    setSelectedMethod(""); // Reset pilihan metode pembayaran
  };

  const handleMethodChange = (e) => {
    setSelectedMethod(e.target.value); // Simpan nilai metode pembayaran
  };

  const handlePayment = () => {
    if (!selectedMethod) {
      alert("Pilih metode pembayaran terlebih dahulu!");
      return;
    }
    navigate(activeTab === "electronic" ? "/qr" : "/va");
  };

  return (
    <div className="opsibayar-page">
      {/* header */}
      <Header />

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
              <h4>Rp {totalPayment.toLocaleString()}</h4>
              <h2>Rp {totalPayment.toLocaleString()}</h2>
            </div>
          </div>

          <div className="option-group">
            <div className="option">
              <div className="coins-name">
                <h3>AYUNE COINS</h3>
              </div>
              <div className="coins-total">
                <p>Saldo</p>
                <p>3.500</p>
              </div>
              <input
                type="radio"
                name="payment-method"
                value="coins"
                onChange={handleMethodChange}
              />
            </div>

            <div className="tab-container">
            <button
                className={`tab-button ${activeTab === "electronic" ? "active" : ""}`}
                onClick={() => handleTabChange("electronic")}
              >
                Uang Elektronik
              </button>
              <button
                className={`tab-button2 ${activeTab === "bank-transfer" ? "active" : ""}`}
                onClick={() => handleTabChange("bank-transfer")}
              >
                Transfer Bank
              </button>
            </div>

            <div className="payment-options">
              {activeTab === "electronic" && (
                <div id="electronic" className="tab-content active">
                  <div className="option">
                    <img src="assets/images/gopay.png" alt="Gopay" />
                    <p>Gopay</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="gopay"
                      onChange={handleMethodChange}
                    />
                  </div>
                  <div className="option">
                    <img src="assets/images/spay.png" alt="ShopeePay" />
                    <p>ShopeePay</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="spay"
                      onChange={handleMethodChange}
                    />
                  </div>
                  <div className="option">
                    <img src="assets/images/ovo.png" alt="OVO" />
                    <p>OVO</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="ovo"
                      onChange={handleMethodChange}
                    />
                  </div>
                  <div className="option">
                    <img src="assets/images/dana.svg" alt="Dana" />
                    <p>Dana</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="dana"
                      onChange={handleMethodChange}
                    />
                  </div>
                </div>
              )}

              {activeTab === "bank-transfer" && (
                <div id="bank-transfer" className="tab-content active">
                  <div className="option">
                    <img src="assets/images/bca.png" alt="BCA" />
                    <p>BCA</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="bca"
                      onChange={handleMethodChange}
                    />
                  </div>
                  <div className="option">
                    <img src="assets/images/bri.png" alt="BRI" />
                    <p>BRI</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="bri"
                      onChange={handleMethodChange}
                    />
                  </div>
                  <div className="option">
                    <img src="assets/images/bni.png" alt="BNI" />
                    <p>BNI</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="bni"
                      onChange={handleMethodChange}
                    />
                  </div>
                  <div className="option">
                    <img src="assets/images/mandiri.png" alt="Mandiri" />
                    <p>Mandiri</p>
                    <input
                      type="radio"
                      name="payment-method"
                      value="mandiri"
                      onChange={handleMethodChange}
                    />
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
      <Footer />
    </div>
  );
};

export default Opsibayar;