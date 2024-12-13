import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import axios from 'axios';

const DeskripsiProduk = () => {
    const { id } = useParams();
    const [produk, setProduk] = useState(null);

    useEffect(() => {
        axios.get(`http://localhost:5000/api/produk/${id}`)
            .then((response) => {
                setProduk(response.data);
            })
            .catch((error) => {
                console.error('Error fetching product details:', error);
            });
    }, [id]);

    if (!produk) {
        return <p>Loading...</p>;
    }

    return (
        <div style={{ padding: '20px' }}>
            <h1>{produk.nama_produk}</h1>
            <img 
                src={produk.gambar} 
                alt={produk.nama_produk} 
                style={{ width: '100%', maxHeight: '300px', objectFit: 'cover' }} 
            />
            <p><strong>Brand:</strong> {produk.nama_brand}</p>
            <p><strong>Harga:</strong> {produk.kisaran_harga}</p>
            <p><strong>Deskripsi:</strong> {produk.deskripsi}</p>
        </div>
    );
};

export default DeskripsiProduk;
