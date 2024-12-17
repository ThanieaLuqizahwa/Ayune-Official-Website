-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 09:21 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayune_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int NOT NULL,
  `nama_brand` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `nama_brand`) VALUES
(1, 'SENKA'),
(2, 'SKINTIFIC'),
(3, 'EMINA'),
(4, 'CETAPHIL'),
(5, 'AMATERASUN'),
(6, 'SOMETHINC'),
(7, 'BREYLEE'),
(8, 'AVOSKIN'),
(9, 'SCARLETT WHITENING'),
(10, 'DERMALUZZ'),
(11, 'BARENBLISS'),
(12, 'PONDS'),
(13, 'YOU'),
(14, 'HALE'),
(15, 'GORJESS'),
(16, 'STUDIO TROPIK'),
(17, 'GLAD2GLOW'),
(18, 'NIVEA'),
(19, 'FIRST LAB'),
(20, 'JARKEEN'),
(21, 'AZARINE'),
(22, 'BIORE'),
(23, 'TRUE TO SKIN'),
(24, 'WARDAH'),
(25, 'BANOBAGI'),
(26, 'HADA LABO'),
(27, 'LACOCO'),
(28, 'ELVICTO'),
(29, 'GARNIER'),
(30, 'PYUNKANG YUL'),
(31, 'THE ORIGINOTE'),
(32, 'KAHF'),
(33, 'BHUMI'),
(34, 'NATUR'),
(35, 'NPURE'),
(36, 'SKIN AQUA'),
(37, 'LABORE'),
(38, 'LOREAL PARIS'),
(39, 'VOYNOON');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int NOT NULL,
  `id_konsultasi` int DEFAULT NULL,
  `id_tipe` int DEFAULT NULL,
  `id_masalah_kulit` int DEFAULT NULL,
  `id_rekomendasi` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `id` int NOT NULL,
  `nama_dokter` varchar(255) DEFAULT NULL,
  `gambar` text,
  `bidang_dokter` varchar(255) DEFAULT NULL,
  `riwayat_dokter` varchar(255) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL,
  `jadwal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `harga_dokter` decimal(10,2) DEFAULT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`id`, `nama_dokter`, `gambar`, `bidang_dokter`, `riwayat_dokter`, `is_available`, `jadwal`, `harga_dokter`, `rating`) VALUES
(2, 'dr. Michael Jackson Sp.KK', 'gambar2.jpg', 'Spesialis Kulit & Kelamin', '6 Tahun', 1, 'senin', 55000.00, 1),
(3, 'dr. Citra, Sp.KK', 'gambar3.jpg', 'Spesialis Jerawat, Bekas Jerawat', '4 Tahun', 0, 'senin', 55000.00, 0),
(4, 'dr. Emy Kusumaningsih, Sp.DV', 'gambar4.jpg', 'Spesialis Dermatovenereologi Estetika', '7 Tahun', 1, 'senin', 75000.00, 0),
(5, 'dr. Anatasya, Sp.KK', 'gambar5.jpg', 'Spesialis Kulit Kusam, Pigmentasi', '3 Tahun', 1, '', 35000.00, 0),
(6, 'dr. Clara, Sp.KK', 'gambar6.jpg', 'Spesialis Kulit Sensitif, Alergi', '4 Tahun', 1, '', 65000.00, 0),
(7, 'Spesialis Kulit Sensitif, Alergi', 'gambar7.jpg', 'Spesialis Kulit Ibu Hamil, Stretch Mark', '3 Tahun', 1, '', 50000.00, 0),
(8, 'dr. Erlina, Sp.KK', 'gambar8.jpg', 'Spesialis Keloid, Bekas Luka', '2 Tahun', 1, '', 80000.00, 0),
(14, 'dr. nando 3', '', 'Kulit Sensitif', '23 Tahun', 1, 'senin-selasa', 40000.00, 3),
(15, 'dr. nando6', '', 'Spesialis Dermatovenereologi Estetika', '23 Tahun', 0, 'senin-selasa', 40000.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_skincare`
--

CREATE TABLE `jenis_skincare` (
  `id` int NOT NULL,
  `nama_jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jenis_skincare`
--

INSERT INTO `jenis_skincare` (`id`, `nama_jenis`) VALUES
(1, 'Pembersih'),
(2, 'Pelembab'),
(3, 'Toner'),
(4, 'Serum'),
(5, 'Sunscreen'),
(6, 'Masker');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Pembersih'),
(2, 'Pelembap'),
(3, 'Toner'),
(4, 'Serum'),
(5, 'Sunscreen'),
(6, 'Masker');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_dokter` int DEFAULT NULL,
  `tgl_konsultasi` date DEFAULT NULL,
  `deskripsi` text,
  `id_tipe_kulit` int DEFAULT NULL,
  `id_masalah_kulit` int DEFAULT NULL,
  `usia` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masalah_kulit`
--

CREATE TABLE `masalah_kulit` (
  `id` int NOT NULL,
  `nama_masalah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `masalah_kulit`
--

INSERT INTO `masalah_kulit` (`id`, `nama_masalah`) VALUES
(1, 'Jerawat & Komedo'),
(2, 'Penuaan'),
(3, 'Pigmentasi'),
(4, 'Tekstur Kulit'),
(5, 'Kering & Sensitif'),
(6, 'Berminyak'),
(7, 'Kehamilan'),
(8, 'Warna Kulit');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_konsultasi`
--

CREATE TABLE `pesan_konsultasi` (
  `id` int NOT NULL,
  `id_konsultasi` int DEFAULT NULL,
  `id_pengirim` int DEFAULT NULL,
  `tipe_pengirim` enum('dokter','user') DEFAULT NULL,
  `attachment_url` text,
  `waktu_kirim` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `id_jenis` int DEFAULT NULL,
  `id_tipe_kulit` int DEFAULT NULL,
  `id_masalah` int DEFAULT NULL,
  `id_brand` int DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kisaran_harga` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `komposisi` text,
  `cara_pemakaian` text,
  `rating_produk` decimal(10,0) DEFAULT NULL,
  `link_shopee` text,
  `link_tokopedia` text,
  `id_kategori` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_jenis`, `id_tipe_kulit`, `id_masalah`, `id_brand`, `nama_produk`, `gambar`, `kisaran_harga`, `deskripsi`, `komposisi`, `cara_pemakaian`, `rating_produk`, `link_shopee`, `link_tokopedia`, `id_kategori`) VALUES
(1, 1, 1, 3, 1, 'Perfect Whip Berry Bright', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/SEN-FAW-00075.000_1.png', 'Rp72.000 - Rp80.000', 'Facial foam terbaru dari Senka yang dapat membuat kulit wajahmu bersih, lembap, dan tampak cerah merona alami! Diformulasikan dengan Mixed Berries (Cranberry & Raspberry) yang kaya antioksidan, Perfect Whip Berry Bright dapat membuat kulit wajah tampak cerah merona (healthy blush). Selain itu, kandungan Japanese Yoshino Cherry Extract bisa membantu deep cleansing sel kulit mati dan kotoran secara lembut. Cocok digunakan bagi kulit normal hingga berminyak yang kusam, kering, dan terasa kasar.', 'Water (Aqua), Glycerin, Stearic Acid, Myristic Acid, Potassium Hyfroxide, Lauric Acid, PEG-8, Glyceryl Stearate SE, Sodium Methyl Cocoyl Taurate, Polyquaternium-7, Fragrance, Acrylates Copolymer, Disodium EDTA, Sodium Citrate, Algin, Sodium Benzoate, Sodium Metabisulfite, Phenoxyethanol, Caprylyl Glycol, Chondrus Crispus, Iron Oxides, Sodium Lauryl Sulfate, Clacium Chloride, RED 30, PEG/PPG-14/7 Dimethyl Ether, Vaccinium Macrocarpon (Cranberry) Fruit Extract, Butylene Glycol, Sericin, Lauryl Glucoside, Potassium Sorbate, Citric Acid, Prunus Yedoensis Leaf Extract, Sodium Acetylated Hyaluronate, Sodium Hyaluronate, Sorbic Acid, Glycyrrhiza Glabra (Licorice) Root Extract, Rubus Idaeus (Raspberry) Fruit Extract.', '1. Cuci tangan hingga bersih dan keluarkan Senka Perfect Whip kurang lebih 2 cm di atas permukaan tangan\n2. Beri air kurang lebih sebanyak 1 sendok teh\n3. Buat Gerakan melingkar 0 untuk menghasilkan foam yang tebal dan padat\n4. Usapkan dan gunakan foam untuk cuci muka', 0, 'https://shopee.co.id/Senka-Perfect-Whip-Gentle-Rose-Facial-Foam-100g-i.140192883.24620214729?sp_atk=888cba8a-a499-44b5-a31c-5c62143b65e6&xptdk=888cba8a-a499-44b5-a31c-5c62143b65e6', 'https://www.tokopedia.com/nihonmart/senka-perfect-whip-berry-bright-100g?extParam=ivf%3Dfalse&keyword%3Dsenka+perfect+whip+berry+bright&search_id=202411231704385EF27DE50DE81D3CA6PW&src=search', 1),
(2, 1, 5, 4, 4, 'Hydrating Foaming Cream Cleanser', 'https://i5.walmartimages.com/asr/81c96531-23db-4e08-b7fc-d1dce5a3a63b.03929fa8c8867193d21ca1167ded3f86.png', 'Rp155.000 - Rp167.000', 'Pembersih krim yang berubah menjadi busa ini membersihkan tanpa membuat kering skin barrier serta sudah teruji secara klinis efektif membersihkan kotoran, minyak, dan riasan. Diformulasikan dengan aloe vera yang menenangkan, glycerin yang menghidrasi, panthenol (pro-vitamin B5), dan niacinamide (vitamin B3), produk ini membuat kulit terasa terhidrasi, lembut, dan halus setelah digunakan. Formulanya juga menjaga lapisan pelindung alami dan pH kulit untuk mengurangi tanda-tanda kulit sensitif.', 'Aqua, Sodium Cocoyl Isethionate, Glycerin, Glycol Distearate, Sodium Cocoyl Glutamate, Cocamidopropyl Betaine, Sodium Lauroyl Sarcosinate, Cetearyl Alcohol, Niacinamide, Panthenol, Aloe Barbadensis Leaf Juice Powder, Pantolactone, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Arginine, Propylene Glycol, Sodium Chloride, Xanthan Gum, Ethylhexylglycerin, Phenoxyethanol, Citric Acid. FIL.1815.V00', '1. Basahi kulit dan tuangkan pembersih ini ke telapak tangan.\n2. Usap-usap krim hingga terbentuk busa, tambahkan sedikit air untuk busa yang lebih banyak.\n3. Pijatkan busa pada kulit secara lembut dengan gerakan memutar. Bilas hingga bersih dan keringkan.', 0, 'https://shopee.co.id/Cetaphil-Hydrating-Foaming-Cream-Cleanser-236ml-i.30736001.29407441865?sp_atk=4946c549-b4eb-4e1d-92d7-1104a4a6e3b5&xptdk=4946c549-b4eb-4e1d-92d7-1104a4a6e3b5', 'https://www.tokopedia.com/century-online/cetaphil-hydrating-foaming-cream-cleanser-236ml-facial-foam-kulit-sensitive?extParam=ivf%3Dfalse&keyword=cetaphil+hydrating+foaming+cream+cleanser&search_id=20241123170530A48BD17A25E2A3042ZNS&src=search&whid=16915295', 1),
(3, 5, 4, 3, 2, 'Aqua Light Daily Sunscreen 30ml/50ml SPF 35 PA+++', 'https://images.soco.id/21ea3f13-024c-4eb5-8431-96d0f4f30fc7-.jpg', 'Rp89.000 - Rp99.000', 'Tabir surya yang mengandung Allantoin, Trehalose, dan Tremella yang berfungsi untuk menenangkan kulit dan memberikan hidrasi. Tekstur air yang ringan, terasa segar saat diaplikasikan pada kulit wajah. Mengandung SPF 35+ PA+++ dengan teknologi Tinosorb S Lite Aqua, mencegah kusam sepanjang hari akibat oksidasi sebum. Tidak ada gips putih, tidak lengket, cocok untuk kulit berjerawat dan berminyak.', 'Aqua, Allantoin, Trehalose, Tremella, Tinosorb S Lite Aqua, Glycerin, Niacinamide, Caffeine, Ethylhexyl Methoxycinnamate, Ethylhexyl Salicylate, Butylene Glycol, Phenoxyethanol, Ethylhexylglycerin.', '1. Keluarkan 2 buku jari tabir surya dan oleskan ke seluruh wajah dan leher Anda.\n2. Gunakan pada area yang mungkin terkena sinar matahari selama 15-30 menit dengan ketebalan sekitar 2 mg/cm² sebelum kulit terkena sinar matahari langsung.\n3. Untuk aktivitas di luar ruangan, disarankan untuk menggunakan produk setiap 2 jam.\n4. Jangan terlalu lama terkena sinar matahari, bahkan saat menggunakan produk tabir surya. Paparan sinar matahari yang berlebihan bisa berbahaya bagi kesehatan.', 0, 'https://shopee.co.id/SKINTIFIC-Aqua-Light-Daily-Sunscreen-SPF-35-PA-50g-Skincare-Sunscreen-Skin-True-to-Skin-Tinted-Sunscreen-Aqua-Sunblock-Sunblock-Badan-Sun-Stick-Glowing-Barrier-Anti-Aging-Brightening-Whitening-Mencerahkan-Wajah-Melindungi-Kulit-dari-Sinar-UVA-UVB-i.380266264.29760163690?sp_atk=27e9210b-dd88-4bed-a1b1-b65ea06dfedf&xptdk=27e9210b-dd88-4bed-a1b1-b65ea06dfedf', 'https://www.tokopedia.com/skintific/skintific-aqua-light-daily-sunscreen-50g-spf-35-pa-skincare-sunscreen-skin-aqua-sunblock-sunblock-sun-stick-glowing?extParam=ivf%3Dtrue&keyword=skntific+light+daily+sunscreen&search_id=20241123170646F9418E2E0AA700171ZE7&src=search&refined=true', 1),
(4, 4, 3, 3, 2, 'Lactic Acid Skin Renewal Exfoliating Serum 20 ML', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/id-11134207-7r98z-lsmm1557dt848d-Photoroom.png-Photoroom.png', 'Rp300.000 - Rp340.000', 'Serum eksfoliasi dengan bahan utama Lactic Acid, Succinic Acid dan Pink Grapefruit Acid, memberikan hasil maksimal namun lembut untuk merawat kulit berjerawat, berminyak dan bertekstur. Menggunakan Tiga Bahan Paten Perancis (Evermat™, Pixalia®, Prodizia™) yang berbahan dasar tumbuhan, bekerja pada permukaan pori-pori, mengecilkan tampilan pori-pori secara signifikan dan menekan sebum berlebih, sehingga kulit tampak lebih halus dan cerah. Triple Action dalam 3 Kali Pemakaian, meredakan jerawat, menghaluskan tekstur kulit dan membuat kulit bercahaya. Diformulasikan untuk semua jenis kulit, terutama kulit berminyak dan berjerawat.', 'Aqua, Lactic Acid, Succinic Acid, Pink Grapefruit Acid, Gluconolactone, Butylene Glycol, Glycerin, Niacinamide, Evermat™, Pixalia®, Prodizia™, Sodium Hyaluronate, Caffeine, Allantoin, Phenoxyethanol, Ethylhexylglycerin.', '1. Oleskan beberapa tetes pada area wajah dan leher yang bersih sebelum mengaplikasikan pelembab.\n2. Disarankan untuk tidak menggunakan serum dengan bahan aktif lain secara bersamaan.\n3. Gunakan hanya pada malam hari, maksimal 2-3 kali seminggu.\n4. Gunakan tabir surya di pagi hari.', 0, 'https://shopee.co.id/SKINTIFIC-Lactic-Acid-Skin-Renewal-Exfoliating-Serum-20ml-Peeling-Wajah-Serum-Mencerahkan-Dark-Spot-Tumpas-Komedo-anti-aging-dan-anti-acnedan-Eksfoliasi-Mengangkat-Sel-Kulit-Mati-Exfoliating-with-AHA-Lactic-Acid-Succinic-Acid-dan-Pink-Grapefruit-Acid-i.380266264.18487385787', 'https://www.tokopedia.com/skintific/skintific-lactic-acid-skin-renewal-exfoliating-serum-20-ml?extParam=ivf%3Dfalse&src=topads', 1),
(5, 5, 4, 5, 5, 'Physical Sunscreen SPF 50+', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/Physical_Sunscreen_SPF_50_PA%2B%2B%2B%2B_DEPAN_%281%29_1.png', 'Rp79.000 - Rp99.000', '100% Mineral (physical) Broad Spectrum Sunscreen dengan kandungan menenangkan, diperkaya dengan Heartleaf & Intelligent DNA Guardian® yang melindungi kulit & skin barrier dari UVA, UVB, kerusakan DNA, blue-light, radikal bebas, polusi, & penuaan dini. Amaterasun Physical Sunscreen tersertifikasi Hypoallergenic & Dermatology tested ini nyaman digunakan setiap hari untuk kulit normal & sensitif dari anak usia 1 tahun.', 'Water, Zinc Oxide, Cyclohexasiloxane, Butyloctyl Salicylate, Propanediol, Dicaprylyl Carbonate, Propylheptyl Caprylate, Disiloxane, Trimethylsiloxysilicate, Pentylene Glycol, Lauryl Polyglyceryl-3 Polydimethylsiloxyethyl Dimethicone, 1,2-Hexanediol, Disteardimonium Hectorite, Magnesium Sulfate, Polyglyceryl-2 Dipolyhydroxystearate, Isododecane, Triethoxycaprylylsilane, Acrylates/Polytrimethylsiloxymethacrylate Copolymer, Polyhydroxystearic Acid, Hydroxyacetophenone, Dimethicone, Polyglyceryl-4 Diisostearate/Polyhydroxystearate/Sebacate, Lecithin, Ethylhexyl Palmitate, Isostearic Acid, Isopropyl Myristate, Dipotassium Glycyrrhizate, Polyglyceryl-3 Polyricinoleate, Houttuynia Cordata Extract, Helianthus Annuus (Sunflower) Seed Oil, Tocopherol, Ethyl Ferulate, Rosmarinus Officinalis (Rosemary) Leaf Extract, Butylene Glycol.', '1. Aplikasikan sejumlah 2 jari ke seluruh wajah secara merata di tahapan terakhir skincare, sebelum makeup atau 15 menit sebelum terpapar sinar matahari.\n2. Pakai ulang setiap 2 jam sekali untuk mendapatkan perlindungan maksimal.', 0, 'https://shopee.co.id/-BUNDLE-Amaterasun-Lip-Balm-SPF-20-PA-x-Physical-Sunscreen-SPF-50-PA--i.898355694.27215827618?sp_atk=7de881eb-d084-48d7-815a-1204bf3f3e52&xptdk=7de881eb-d084-48d7-815a-1204bf3f3e52', 'https://www.tokopedia.com/amaterasunofficial/amaterasun-real-spf-certified-physical-sunscreen-spf-50-pa-single-48261', 1),
(6, 4, 3, 3, 6, 'Serum Salmon DNA + Marine Collagen Elixir', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/PDP_Salmon_DNA_%2B_Marine_Collagen_Elixir.jpg', 'Rp130.000 - Rp140.000', 'Skin Booster Elixir yang diformulasikan dengan 62% Deep Sea Water, Pseudoalteromonas Ferment Extract, Hydrolyzed Marine Collagen dan Pearl yang mampu menghidrasi & menyeimbangkan produksi minyak serta DNA Salmon yang berperan untuk memperkuat skin barrier & membantu mencegah tanda penuaan dini.', '62% Sea Water, Glycerin, Water, Methylpropanediol, Pseudoalteromonas Ferment Extract (Antarctica), Ammonium Acryloyldimethyltaurate/VP Copolymer, Butylene Glycol, Betaine, DNA (Salmon), Adenosine, Xanthan Gum, Phenoxyethanol, Anthemis Nobilis Flower Extract, Ethylhexylglycerin, Caprylyl Glycol, Carbomer, Melia Azadirachta Leaf Extract, Potassium sorbate, Melia Azadirachta Flower Extract, Amino Esters-1, Coccinia Indica Fruit Extract, Solanum Melongena (Eggplant) Fruit Extract, Allantoin, Caffeine, Aloe Barbadensis Flower Extract, sodium metabisulfite, Curcuma Longa (Turmeric) Root Extract, Ocimum Basilicum (Basil) Flower/Leaf Extract, Pearl Powder, Lawsonia Inermis (Henna) Flower/Fruit/Leaf Extract, Ocimum Sanctum Leaf Extract, Biotin, Tocopherol, 1,2-Hexanediol', '1. Bersihkan wajah\n2. Oleskan 5 - 10 tetes serum ke telapak tangan.\n3. Tekan perlahan telapak tangan ke wajah, tepuk-tepuk serum dengan gerakan ke luar & ke atas sampai merata ke wajah.\n4. Tunggu selama 1-3 menit hingga produk terserap sepenuhnya. Dapat digunakan setiap hari (malam & siang).', 0, 'https://shopee.co.id/SOMETHINC-Salmon-DNA-Marine-Collagen-Elixir-Serum-Awet-Muda-i.195455930.11801204134?sp_atk=baba4219-7534-4464-889f-0f6ab758120d&xptdk=baba4219-7534-4464-889f-0f6ab758120d', 'https://www.tokopedia.com/dkmall/somethinc-salmon-dna-marine-collagen-elixir-serum-skin-booster?extParam=ivf%3Dfalse&keyword=somethic+serum+dna+salmon&search_id=20241123170131A48BD17A25E2A33D5TTA&src=search&refined=true', 1),
(7, 6, 2, 4, 7, 'Step 1 Blackhead Remover Mask', 'https://incidecoder-content.storage.googleapis.com/64d14060-d5ff-4ed2-9d8d-174754275b77/products/the-originote-bha-charcoal-clay-mask/the-originote-bha-charcoal-clay-mask_front_photo_original.jpeg', 'Rp63.000 - Rp67.000', 'Breylee merupakan pembersih yang membantu mengangkat dan menghilangkan komedo. Komedo melekat dengan erat pada kertas masker. Komedo ditarik keluar dari bawah.', 'Water, Glycerin, Charcoal Powder (Bubuk Arang), Bentonite, Kaolin, PEG-60 Hydrogenated Castor Oil, Propylene Glycol, Salicylic Acid, Sodium Chloride, Phenoxyethanol, Ethylhexylglycerin, Fragrance, Disodium EDTA, Citric Acid.', '1. Setelah membilas wajah, gunakan air hangat untuk membuka pori-pori pada wajah.\n2. Gunakan kuas pada produk, lalu aplikasikan pada bagian hidung, pipi atau dagu, lalu tempelkan kertas.\n3. Tunggu 3-5 menit lalu cabut kertas pengangkat komedo dan lihat lah hasilnya.\n4. Produk ini juga dilengkapi dengan 100 lembar kertas.', 0, 'https://shopee.co.id/%E3%80%90BPOM-BREYLEE-Blackhead-Removal-Mask-Step-1-Pore-Minimizer-Serum-Step-2-Masker-Pengangkat-Komedo-Serum-Pengecil-Pori-Por-Blackhead-Set-i.324706771.27451725578?sp_atk=f8028eb7-685b-4a8f-ba30-7e3410a2e4dc&xptdk=f8028eb7-685b-4a8f-ba30-7e3410a2e4dc', 'https://www.tokopedia.com/breyleeindonesia/breylee-step-1-blackhead-remover-mask-pembersih-komedo-17ml-breylee-step-1', 1),
(8, 1, 3, 2, 3, 'Bright Stuff Face Wash 100 ml', 'https://images.soco.id/17c13a31-a072-4d89-8079-ca9f0dc2ee7e-image-0-1615343214297', 'Rp30.000 - Rp33.000', 'Emina Bright Stuff For Acne Prone Skin Face Wash 100ml dengan extract summer plum dan double brightening power di dalamnya akan membantumu! Dikombinasikan dengan ekstrak cinnamon bark untuk kulit rentan berjerawat, kotoran dan minyak berlebih terangkat tanpa membuat kulitmu kering. Kini kulitmu lebih bersih, cerah dan glowing.', 'Water, Glycerin, Cocamidopropyl Betaine, Sodium Chloride, Sodium Lauroyl Glutamate, Glyceryl Stearate, Vitamin C, Liquorice Extract (Ekstrak Licorice), Phenoxyethanol, Ethylhexylglycerin, Fragrance.', '1. Tuangkan produk secukupnya basahi dengan air dan busakan di wajah.\n2. Bilas dan keringkan.\n3. Gunakan pagi dan malam hari untuk hasil maksimal lanjutkan dengan Emina Bright Stuff for Acne Prone Skin Moisturizing Cream.\n4. Hindari daerah mata.', 0, 'https://shopee.co.id/Emina-Facial-Wash-Bright-Stuff-100ml-i.30736001.4436341484?sp_atk=222530ac-c237-42cf-b978-ccf1f4e2df50&xptdk=222530ac-c237-42cf-b978-ccf1f4e2df50', 'https://www.tokopedia.com/guardian-officia/emina-bright-stuff-for-acne-prone-skin-face-wash-100ml?extParam=ivf%3Dfalse&keyword=emina+bright+stuff+face+wash+100+ml&search_id=2024112317091961D7F1A0C664E4038IKA&src=search', 1),
(9, 1, 4, 1, 2, '3X Acid Acne Gel Cleanser', 'https://images.soco.id/74d23c72-2111-4bba-9ff9-d48fbd9cb7ca-image-0-1722399654357', 'Rp110.000 - Rp115.000', 'Diformulasikan dengan Pro-Potent Ingredients, kombinasi 3 jenis asam dalam satu produk yang lebih berfokus untuk mengobati masalah jerawat secara efisien namun lembut. Teknologi Sintesis Hijau, perpaduan bahan kimia dan alami, memberikan formula pendekatan yang lebih ramah lingkungan dan lebih lembut. Centella asiatica dan Pionin (Quaternium-73) menenangkan jerawat dan memerangi bakteri penyebab jerawat. Tekstur gel to foam dengan busa gelembung mikro membantu membersihkan pori-pori yang tersumbat, minyak berlebih, dan memberikan sensasi pendinginan yang menyegarkan. Cocok untuk semua jenis kulit, terutama direkomendasikan untuk kulit berminyak dan berjerawat.', 'Aqua, Potassium Cocoyl Glycinate, Hydrogenated Starch Hydrolysate, Acrylates/Steareth-20 Methacrylate Crosspolymer, Potassium Cocoate, Sodium Lauroamphoacetate, Lauryl Hydroxysultaine, Phenoxyethanol, Erythritol, Betaine, Caprylyl Glycol, C12-13 Alketh-9, Parfum, Potassium Hydroxide, Sodium Chloride, Disodium EDTA, Glycosyl Trehalose, Dipropylene Glycol, Quaternium-73, Caramel, Hydroxyacetophenone, Salicylic Acid, Allantoin, Lactobionic Acid, Lactic Acid, Butylene Glycol, Hydroxypropyl Cyclodextrin, CI 19140, Centella Asiatica Extract, 1,2-Hexanediol, CI 42100, Ethylhexylglycerin.', 'Oleskan pada wajah basah, pijat lembut dengan gerakan melingkar, dan hindari area mata. Bilas hingga bersih dan tepuk-tepuk perlahan hingga kering. Ikuti langkah perawatan kulit berikutnya.', 0, 'https://shopee.co.id/-New-Launch-SKINTIFIC-3X-Acid-Acne-Gel-Cleanser-120ml-Salicilyc-Acid-Facial-Wash-Cleanses-Excess-Sebum-Face-Wash-Sabun-Cuci-Muka-Acner-Glowing-Barrier-Brightening-Whitening-Blackhead-Removal-Calming-with-3X-ACID-Complex-i.380266264.27503754078', 'https://www.tokopedia.com/skintific/skintific-3x-acid-acne-gel-cleanser-120ml-facial-wash-acnes-face-wash-calms-acne-salicylic-acid-lactic-acid-centella-calms-and-soothes-acne?extParam=ivf%3Dtrue&src=topads', 1),
(10, 3, 2, 2, 8, 'Miraculous Retinol Toner', 'https://images.soco.id/97145099608-1585555026139.png', 'Rp169.000 - Rp175.000', 'Avoskin Miraculous Retinol Toner memiliki kandungan Actosome Retinol, Niacinamide, Peptide, serta diperkaya dengan Ekstrak Pomegranate yang efektif untuk membantu memicu proses regenerasi sel kulit, menyamarkan tampilan garis halus, membantu menghaluskan tekstur kulit, membantu mencerahkan kulit, merawat kulit agar tampak lebih sehat, dan membantu menyamarkan munculnya tanda-tanda penuaan dini.', 'Water, Propylene Glycol, Niacinamide, Glycerin, Polysorbate 20, Phenoxyethanol, PEG-40 Hydrogenated Castor Oil, Polyglyceryl-2 Stearate, Caprylic/Capric Triglyceride, Glyceryl Stearate, Stearyl Alcohol, Camellia Sinensis (Greet Tea) Leaf Extract, Methyl Methacrylate Crosspolymer, Polyglutamic Acid, Tetrasodium EDTA, Retinol, Hydrogenated Lecithin, Ethylhexylglycerin, Cholesterol, Xanthan Gum, Tocopheryl Acetate, Rubus Idaeus (Raspberry) Fruit Extract, Butylene Glycol, Phaseolus Radiatus Seed Extract, BHA, Avena Sativa (Oat) Meal Extract, Palmitoyl Hexapeptide-12.', 'Setelah mencuci muka, tuangkan beberapa tetes toner ke telapak tangan, usap dan tepuk-tepuk secara perlahan di seluruh area wajah dan leher. Tidak perlu dibilas.\nUntuk hasil yang optimal, gunakan juga Miraculous Retinol Ampoule dan tambahkan moisturizer untuk memberikan hidrasi ekstra.\nToner ini bisa digunakan di malam hari.\nGunakan sunscreen di pagi hari, untuk melindungi kulit.\nPada awal pemakaian, disarankan untuk frekuensi pemakaian maksimal 3 kali seminggu.\nBila terjadi iritasi maka hentikan penggunaan sementara dan disarankan untuk segera konsultasi dengan ahlinya.', 0, 'https://shopee.co.id/Avoskin-Miraculous-Refining-Toner-(100-ml)-i.110573301.4668634472?sp_atk=77f566a4-4aac-4288-b38b-d6cc77aefc74&xptdk=77f566a4-4aac-4288-b38b-d6cc77aefc74', 'https://www.tokopedia.com/avoskinofficial/toner-avoskin-miraculous-retinol-100ml-best-2-in-1-retinol-niacinamide?extParam=ivf%3Dfalse&keyword=avoskin+miraculous+retinol+toner&search_id=202411241313052BF4EF4A2B083F282XI5&src=search', 1),
(11, 3, 4, 4, 9, 'Acne Essence Toner', 'https://images.soco.id/9948781d-963f-4599-aedf-f0b2c1a7287f-image-0-1629779169090', 'Rp83.000 - Rp90.000', 'Vitamin C meningkatkan produksi kolagen, Glutathione mencerahkan kulit, Witch Hazel Extract membantu meredakan peradangan dan mengencangkan pori-pori, Jeju Propolis Extract meregenerasi kulit untuk membantu membuat tekstur kulit lebih halus dan kenyal, Allantoin melembabkan, menenangkan, dan sifat anti-iritasi, Niacinamide membantu meminimalkan pori-pori yang membesar, Grape Water melembabkan, menenangkan dan menyegarkan kulit.', 'ZINC SEBUM, GREEN TEA WATER, TEA TREE WATER, PHYTO, SQUALANE, MUGWORT HYDROSOL, VITAMIN C, GINKGO EXTRACT, SUCCINIC ACID, DAN GLUCONOLACTONE', '1. Pastikan tangan dalam kondisi bersih.\n2. Tuangkan toner essence ke telapak tangan lalu tepuk-tepuk secara perlahan ke kulit wajah.\n3. Atau bisa tuangkan toner essence secukupnya pada kapas, kemudian mulai usapkan kapas yang telah dibasahi toner essence hingga ke seluruh wajah.', 0, 'https://shopee.co.id/Scarlett-Bright-Essence-Toner-100ml-(429201)-i.16735262.15922097080?sp_atk=1b65d499-ab6c-4a35-8a3b-3cd3cd260264&xptdk=1b65d499-ab6c-4a35-8a3b-3cd3cd260264', 'https://www.tokopedia.com/erlizashop/rm-ready-scarlett-whitening-acne-essence-toner-brightly-bpom-scarlet?extParam=ivf%3Dfalse&keyword=scarlet+whitening+acne+essence+toner&search_id=2024112413171558BCD33917BE67062MV6&src=search', 1),
(12, 3, 1, 5, 10, 'Hydrate Glow Face Toner', 'https://image.femaledaily.com/dyn/210/images/prod-pics/02962ae768136502ef6990921066f366.jpg', 'Rp57.000 - Rp65.000', 'Toner penyegar wajah yang membantu menyempurnakan pembersihan kulit wajah dilengkapi dengan galactomyces ferment Filtrate yg membantu melembabkan memberikan nutrisi pada kulit wajah serta kandungan tranexamic acid, lactic acid, niacinamide yang berfungsi mencerahkan kulit wajah sehingga wajah tampak bersih, cerah dan segar.', 'Aqua, Butylene Glycol, Glycerin, Propanediol, Niacinamide, Sodium PCA, Aloe Barbadensis Leaf Extract, Phenoxyethanol, Galactomyces Ferment Filtrate, Tranexamic Acid, Chamomilla Recutita Extract, Dmdm Hydantoin, Glycolic Acid, Lactic Acid, Panthenol, (water base).', '1. Setelah wajah dibersihkan dengan DERMALUZ Hydrate Glow Face Wash With Galactomyces,\n2. Totolkan DERMALUZ Hydrate Glow Face Toner With Galactomyces dengan kapas ke seluruh bagian wajah.', 0, 'https://shopee.co.id/DERMALUZ-Hydrate-Glow-Face-Toner-With-Galactomyces-i.43690338.3592829947?sp_atk=c7279516-3a4e-42b2-9644-adeb4429c5d9&xptdk=c7279516-3a4e-42b2-9644-adeb4429c5d9', 'https://www.tokopedia.com/dermaluzofficialshop/dermaluz-hydrate-glow-face-toner?extParam=cmp%3D1&ivf%3Dfalse&keyword%3Ddermaluz+hydrate+glow+face+toner&search_id=202411241320303D7D6A20C1DDD412BYLT&src%3Dsearch', 1),
(13, 3, 3, 8, 11, 'Glow Bottle! Lavabiome', 'https://image.femaledaily.com/dyn/210/images/prod-pics/product_1656661549_Glow_Bottl_800x800.jpg', 'Rp16.900 - Rp20.000', 'Brightening essence toner dengan Lava-Dermabiotics, Sepiwhite MSH, dan Niacinamide untuk manfaat 3-in-1 yang mencerahkan, melembapkan, serta memperkuat skin barrier.', 'Aqua, Glycerin, Niacinamide, Phenoxyethanol, Acrylates/​C 10-30 Alkyl, Acrylates Crosspolymer, Chlorphenesin, Allantoin, Sodium Hydroxide, Lactobacillus Ferment Lysate, PEG-40 Hydrogenated Castor Oil, Diphenylsiloxy Phenyl Trimethicone, Triethylhexanoin, Undecylenoyl Phenylalanine, Polyglyceryl-10 Myristate, Citrus Aurantium Bergamia (Bergamot) Fruit Oil', 'Aplikasikan pada wajah yang telah dibersihkan dan tepuk lembut hingga menyerap sempurna.', 0, 'https://shopee.co.id/-MUST-HAVE-BNB-barenbliss-Metaglow-Glow-Bottle!-Lavabiome-Brightening-Korea-Essence-Hydrating-Toner(28-Days-Brightening)-(Pelembab-Wajah)-Toner-3-in-1-untuk-Pencerahan-Kelembapan-dan-Perkuatan-Skin-Barrier-Dermatologically-Tested-i.481522314.19117551532', 'https://www.tokopedia.com/barenbliss/best-selling-bnb-barenbliss-metaglow-glow-bottle-lavabiome-brightening-korea-essence-hydrating-toner-28-days-brightening-pelembab-wajah-toner-3-in-1-untuk-pencerahan-kelembapan-dan-perkuatan-skin-barrier-dermatologically-tested?extParam=ivf%3Dfalse&src=topads', 1),
(14, 3, 2, 8, 12, 'White Beauty Toner 150ml', 'https://medias.watsons.co.id/publishing/WTCID-46402-front-zoom.jpg?version=1728527167', 'Rp33.000 - Rp40.000', 'Ponds Pembersih Wajah White Beauty Face Toner merupakan toner yang dapat atasi masalah kulit berminyak dan kusam dengan formula menyegarkan serta diperkaya pearl Nutrients, AHA, dan Vitamin B3 yang dapat memperkecil pori dan mengangkat minyak berlebih dari kulit sekaligus mencerahkan vlek hitam.', 'Water, Alcohol Denat, Glycerin, Niacinamide, PEG-40 Hydrogenated Castor Oil, Trideceth-9, Perfume, DMDM Hydantoin, Tocopheryl Acetate, Disodium EDTA, Butylene Glycol, Lodopropynyl Butylcarbamate', 'Tuangkan sedikit isi pada kapas bersih lalu oleskan ke seluruh wajah konsentrasikan pada daerah dahi hidung dan hidung bagian pinggir T-Zone dan dagu.', 0, 'https://shopee.co.id/Ponds-Bright-Beauty-Brightening-Toner-150ml-with-Hyaluronic-Acid-i.932470899.21771405560?sp_atk=be474c46-c411-4db9-a2e4-619b3b7657b5&xptdk=be474c46-c411-4db9-a2e4-619b3b7657b5', 'https://www.tokopedia.com/watsons/ponds-white-beauty-lightening-toner-150ml?extParam=ivf%3Dfalse&keyword=ponds+white+beauty+toner+150ml&search_id=20241124132641D6B5CDE83B048E27FIYR&src=search', 1),
(15, 2, 4, 1, 13, 'Acneplus Multi Action Cream', 'https://images.soco.id/9f4c9a93-9ce2-43be-ad95-c7bcaafa17df-.jpg', 'Rp45.000 - Rp56.000', 'AcnePlus Multi-Action Skin Cream, moisturizer yang mengandung 4D Centella, ekstrak tumbuhan, dan Panthenol. Bermanfaat menenangkan kemerahan pada kulit, merawat jerawat, melembapkan kulit.', 'Water, Glycerin, Cellulose, Sodium Chloride, Sodium Citrate, Butylene Glycol, Phenoxyethanol, Lactobionic Acid, Citric Acid, Hydroxyacetophenone, Pseudoalteromonas Ferment Extract, Sodium Hyaluronate, PEG-40 Hydrogenated Castor Oil, Disodium EDTA, Astragalus Membranaceus Root Extract, Aminomethyl Propanol, Saposhnikovia Divaricata Root Extract, Calendula Officinalis Flower Extract, Caprylic/Capric Triglyceride, Isohexadecane, Sodium Salicylate, Gastrodia Elata Root Extract, Albizia Julibrissin Flower Extract, Hamamelis Virginiana (Witch Hazel) Extract, Cedrus Atlantica Bark Oil, Melaleuca Alternifolia (Tea Tree) Leaf Oil, Citrus Paradisi (Grapefruit) Peel Oil, Pelargonium Graveolens Oil, Glycolic Acid, Quaternium-73, 1,2-Hexanediol, Madecassoside, Asiaticoside, Asiatic Acid, Madecassic Acid.', '1. Bersihkan muka.\n2. Totolkan AcnePlus Multi-Action Skin Cream Moiturizer sedikit pada daerah yang berjerawat.', 0, 'https://shopee.co.id/-NEW-YOU-AcnePlus-Spot-Care-X-Obat-Totol-Jerawat-Centella-dan-Bekas-Jerawat-i.72375863.18368258194?sp_atk=ea7616ad-74f0-4744-9063-1e316f3b99d2&xptdk=ea7616ad-74f0-4744-9063-1e316f3b99d2', 'https://www.tokopedia.com/starryshop12/you-acneplus-multi-action-skin-cream-moiturizer-anti-jerawat-kulit-berminyak-y-o-u-you-you-skincare-acne-plus-30g-30gr?extParam=ivf%3Dfalse&keyword=y.o.u+acneplus+multi+action+cream&search_id=2024112413273619376DCB2B23EE3ADGKH&src=search', 1),
(16, 2, 3, 4, 14, 'Fountain Of Youth', 'https://images.soco.id/34aeb7da-ab14-4e49-ab72-5a0144514af4-.jpg', 'Rp139.000 - Rp145.000', 'Hale Fountain Of Youth mengandung 3% Matrixyl™ 3000 dan 0.1% Retinol dengan tekstur krim yang ringan yang dapat mengurangi tampilan garis halus, menghasilkan tampilan pori yang lebih rapat dengan memperbaiki elastisitas kulit, dan mencerahkan kulit.', 'Water, Butylene Glycol, Caprylic/Capric Triglyceride, Cetearyl Alcohol, Cetyl Ethylhexanoate, Polyglyceryl-3 Methylglucose Distearate, Dicaprylyl Ether, Glycerin, Glyceryl Stearate, Pentylene Glycol, 1,2-Hexanediol, Cetearyl Olivate, Sorbitan Olivate, Allantoin, Hydroxyacetophenone, Palmitic Acid, Stearic Acid, Carbomer, BHT, Xanthan Gum, Tromethamine, Disodium EDTA, Retinol, Polysorbate 20, Tocopherol, Palmitoyl Tripeptide-1, Palmitoyl Tetrapeptide-7.', '1. Aplikasikan secara merata ke seluruh bagian wajah di malam hari pada wajah yang telah dibersihkan.\n2. Untuk hasil yang lebih maksimal, lanjutkan dengan penggunaan pelembap.\n3. Apabila muncul kemerahan atau tanda-tanda iritasi, kurangi frekuensi penggunaan sampai kulit menyesuaikan.', 0, 'https://shopee.co.id/HALE-Fountain-of-Youth-3-Matrixyl-3000-0.1-Retinol-i.205814683.23434463359?sp_atk=14f03aa0-0cac-4a26-987e-1957670afd24&xptdk=14f03aa0-0cac-4a26-987e-1957670afd24', 'https://www.tokopedia.com/hallomautnya/hale-fountain-of-youth-20-gr?extParam=ivf%3Dfalse&keyword=hale+fountain+of+youth&search_id=20241124133041FA899DCA0C7AF1266AJO&src=search', 1),
(17, 2, 1, 5, 4, 'Moisturising Cream', 'https://images.soco.id/ebee88bc-af91-435f-a455-7fc1554ce41e-.jpg', 'Rp360.000 - Rp375.000', 'Cetaphil Moisturizing Cream adalah pelembap perawatan kulit dengan kandungan yang memberikan kekuatan ekstra untuk melembutkan dan membantu melembapkan kulit sensitif, kulit kering dan kulit sangat kering.', 'AQUA, GLYCERIN, PETROLATUM, DICAPRYLYL ETHER, DIMETHICONE, GLYCERYL STEARATE, CETYL ALCOHOL, HELIANTHUS ANNUUS SEED OIL, PEG-30 STEARATE, PANTHENOL, NIACINAMIDE, PRUNUS AMYGDALUS DULCIS OIL, TOCOPHEROL, TOCOPHERYL ACETATE, PANTOLACTONE, DIMETHICONOL, ACRYLATES/C10-30 ALKYL ACRYLATE CROSSPOLYMER, CARBOMER, PROPYLENE GLYCOL, BHT, DISODIUM EDTA, BENZYL ALCOHOL, PHENOXYETHANOL, SODIUM HYDROXIDE, CITRIC ACID.', '1. Usapkan Cetaphil Moisturizing Cream sesering yang dibutuhkan atau sesuai anjuran.\n2. Adapun 3 langkah penting yang kamu harus lakukan untuk menjaga kulit sehatmu adalah membersihkan, melembapkan, dan melindungi.', 0, 'https://shopee.co.id/Cetaphil-Moisturizing-Cream-453g-dengan-Sunflower-Oil-Vitamin-E-dan-Almond-Oil-Pelembap-Wajah-Kulit-untuk-Kulit-Sangat-Kering-dan-Sensitif-i.11277516.396631079', 'https://www.tokopedia.com/cetaphil/cetaphil-moisturizing-cream-453g-krim-pelembab-wajah-kulit-untuk-segala-jenis-kulit', 1),
(18, 2, 2, 8, 15, 'Magnificent Ace Moisturizer', 'https://nihonmart.id/pub/media/catalog/product/cache/8a3fa81d90974d9a7299f2eff309979f/m/a/magnificent_ace_moisturizer-min.png', 'Rp240.000 - Rp244.000', 'Cocok untuk semua jenis kulit. Membantu mencerahkan warna kulit, melembabkan & menghidrasi kulit secara maksimal. Membuat kulit menjadi lebih halus, mengurangi kemerahan pada kulit. Membantu mengatasi jerawat & noda bekas jerawat. Memperkuat skin barrier, memberikan perlindungan terhadap radikal bebas, membantu mengontrol sebum.', 'Water, Glycerin, Centella Asiatica Extract, Propanediol, Niacinamide, 1,2-Hexanediol, Pentylene Glycol, Dicaprylyl Carbonate, Pachyrhizus Erosus Root Extract, Glyceryl Acrylate/Acrylic Acid Copolymer, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Butylene Glycol, Caprylic/Capric Triglyceride, Hyaluronic Acid, Sodium Hyaluronate, Hydrolyzed Hyaluronic Acid, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Tromethamine, Allantoin, Hydrogenated Lecithin, Ethylhexylglycerin, Phenoxyethanol, Ceramide NP, Sodium Phytate, Tocopherol, Hydroxypropyltrimonium Hyaluronate, Hydrolyzed Sodium Hyaluronate, Sodium Acetylated Hyaluronate, PEG-9 Diglycidyl Ether/Sodium Hyaluronate Crosspolymer, Potassium Hyaluronate, Dimethylsilanol Hyaluronate, Sodium Benzoate.', '1. Direkomendasikan dipakai setelah menggunakan face wash, toner essence, dan serum.\n2. Pump moisturizer dan aplikasikan pada wajah dan leher.\n3. Pijat perlahan pada area wajah dan leher.', 0, 'https://shopee.co.id/Gorjes-Magnificent-Ace-Moisturizer-50g-i.10689.21282378725?sp_atk=ae8be2a6-a473-4828-ae1b-a07c61b63c9d&xptdk=ae8be2a6-a473-4828-ae1b-a07c61b63c9d', 'https://www.tokopedia.com/nihonmart/gorjes-magnificent-ace-moisturizer-50g?extParam=ivf%3Dfalse&keyword=gorjes+magnificent+ace+moisturizer&search_id=20241124134210D8CDD76679EB8D11DPMB&src=search', 1),
(19, 2, 1, 5, 16, 'Rich Skin Barrier Cream', 'https://images.soco.id/462d73f5-ea45-4f4f-b014-aaa878ea63e6-.jpg', 'Rp199.000 - Rp219.000', 'Studio Tropik Skin Barrier Cream adalah moisturizer sebagai cherry-on-top skincare routine mu. Digunakan di tahap akhir skincare, Skin Barrier Cream adalah moisturizer yang berfungsi untuk mengunci kelembaban kulit dan memperkuat skin barrier untuk menjaga kesehatan kulit #KunciKulitKuat.', 'Aqua, Dicaprylyl Carbonate, Squalane, Diisostearyl Malate, Caprylic/Capric Triglyceride, Bis-Diglyceryl Polyacyladipate-2, Propylene Glycol, Butylene Glycol, Glycerin, Cetearyl Alcohol, Myristic/Palmitic/Stearic/Ricinoleic/Eicosanedioic Glycerides, Cetearyl Olivate, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Bifida Ferment Lysate, Lactobacillus/Collagen/Mesembryanthemum Crystallinum Leaf Extract Ferment Lysate, Polyglutamic Acid, Sodium Hyaluronate, Hydrolyzed Hyaluronic Acid, Sodium Acetylated Hyaluronate, Hydroxypropyltrimonium Hyaluronate, Saccharide Isomerate, Panthenol, Allantoin, Hydrolyzed Jojoba Esters, Triethoxycaprylylsilane, Dextrin Palmitate, Sorbitan Olivate, BHT, Ceteth-10 Phosphate, Dicetyl Phosphate, Triethanolamine, Tetrasodium EDTA, Chlorphenesin, Phenoxyethanol, Ethylhexylglycerin, 1,2-Hexanediol, Caprylyl Glycol, Citric Acid, Titanium Dioxide, Sodium Citrate.', '1. Gunakan di tahap terakhir skincare routine #KunciKulitKuat.\n2. Gunakan spatula untuk mengambil Skin Barrier Cream secukupnya, kemudian aplikasikan secara merata pada wajah dan leher.\n3. Biarkan sesaat agar formula dapat meresap ke kulit.\n4. Lakukan face massage agar hasil lebih maksimal.', 0, 'https://shopee.co.id/Studio-Tropik-Rich-Skin-Barrier-Cream-50g-i.30736001.26601997994?sp_atk=c7852efe-7660-462c-9924-3cf9a30c2a91&xptdk=c7852efe-7660-462c-9924-3cf9a30c2a91', 'https://www.tokopedia.com/beautyhaulindo/studio-tropik-rich-skin-barrier-cream?extParam=ivf%3Dfalse&keyword=studio+tropic+rich+skin+barrier+cream&search_id=20241124135403E81B0449AC250A1F3U5W&src=search&refined=true', 1),
(20, 4, 2, 3, 17, 'Yuja Symwhite 377 Dark Spot SERUM WHITENING BRIGHTENING FACE', 'https://medias.watsons.co.id/publishing/WTCID-37859-front-zoom.jpg?version=1728585266', 'Rp49.000 - Rp55.000', 'Serum dengan kandungan Symwhite 377 dan ekstrak Yuja yang dapat membantu menyamarkan noda hitam bekas jerawat serta noda bekas kemerahan. Tekstur ringan yang mudah meresap serta gentle untuk kulit wajah. Dapat digunakan pagi dan malam hari.', 'Aqua, Butylene Glycol, Pentylene Glycol, Centella Asiatica Extract, Citrus Junos Fruit Extract, Alpha-Arbutin, Glycerin, Hydrolyzed Sodium Hyaluronate, Ceramide EOP, Nonapeptide-1, Bisabolol, Ceramide AP, Ceramide NP, Arginine, Ceramide NS, Ceramide NG, Phenylethyl Resorcinol, 3-0-Ethyl Ascorbic Acid, Panthenol, Hydroxyethylpiperazine Ethane Sulfonic Acid, Raspberry Ketone, Diethoxyethyl Succinate, 1,2-Hexanediol, Dimethicone, Propanediol, Polyglyceryl-10 Myristate, Trisiloxane, Polyacrylate Crosspolymer-6, Verbascum Thapsus Extract, PEG/PPG-14/7 Dimethyl Ether, Xanthan Gum, Sodium Hyaluronate, Glycyrrhiza Glabra Root Extract, Citrus Reticulata Peel Extract, Hydrogenated Lecithin, Tranexamic Acid, Sodium Acetylated Hyaluronate, Hydrogenated Starch Hydrolysate, Maltooligosyl Glucoside, Sodium Hyaluronate Crosspolymer, Ceramide AS, Carnosine, Decarboxy Carnosine Hcl, Ectoin, Ascorbyl Glucoside, Parfum, Hydrolyzed Rice Protein, Disodium EDTA, Ethylhexylglycerin, Hydroxypropyl Cyclodextrin, Citric Acid, Sodium Benzoate, Ergothioneine, Potassium Sorbate.', '1. Ambil produk secukupnya.\n2. Oleskan secara merata ke seluruh wajah.\n3. Gunakan setelah penggunaan toner.\n4. Penggunaan pada pagi hari, lanjutkan dengan sunscreen/tabir surya.', 0, 'https://shopee.co.id/GLAD2GLOW-Yuja-Symwhite-377-Dark-Spot-Serum-i.68111.27512774650?sp_atk=135a678c-eaf4-44f5-87d1-f04ee7eb1e5b&xptdk=135a678c-eaf4-44f5-87d1-f04ee7eb1e5b', 'https://www.tokopedia.com/topalembang/glad2glow-yuja-symwhite-377-dark-spot-serum-whitening-brightening-face?extParam=ivf%3Dfalse&keyword=glad2glow+yuja+symwhite+377+dark+spot...&search_id=20241124140138E81B0449AC250A1C1AAD&src=search&whid=12669178', 1),
(21, 4, 3, 3, 18, 'Luminous 630 Spotclear Intensive', 'https://images.soco.id/5c528442-c04d-4acd-85c5-ff95a88aee2a-.jpg', 'Rp335.000 - Rp350.000', 'Inovasi terbaru, NIVEA Luminous 630 Spotclear Intensive Treatment Serum, dengan tingkat efikasi tertinggi dari NIVEA dalam melawan masalah noda hitam pada wajah, bekerja efektif pada tingkat sel untuk menyamarkan dan mencegah noda hitam muncul kembali. Dalam 4 minggu, noda hitam pada wajah terlihat lebih cerah, dan dalam 8 minggu, intensitas noda hitam berkurang dengan peningkatan berkelanjutan dengan penggunaan reguler.', 'Aqua, Cetearyl Isononanoate, Dimethicone, Isopropyl Palmitate, Glycerin, Alcohol Denat., Cocoglycerides, Distarch Phosphate, Methylpropanediol, Butylene Glycol, Tapioca Starch, Isobutylamido Thiazolyl Resorcinol, Sodium Hyaluronate, Tocopheryl Acetate, Sodium Ascorbyl Phosphate, Sodium Stearoyl Glutamate, Cetyl Alcohol, Stearyl Alcohol, Glyceryl Stearate, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Sodium Polyacrylate, Sodium Chloride, Sodium Sulfate, Trisodium EDTA, Sodium Hydroxide, Phenoxyethanol, Benzyl Alcohol, Limonene, Parfum, CI 15985, CI 16035.', 'Oleskan setiap hari pagi dan malam hari pada kulit wajah yang sudah dibersihkan. Untuk hasil dan perlindungan maksimal, gunakan NIVEA Luminous 630 Spotclear Sun Protect SPF50 PA+++ untuk mencegah noda hitam muncul kembali.', 0, 'https://shopee.co.id/NIVEA-Luminous-630-Spotclear-Intensive-Treatment-Serum-30mL-i.270965687.22758235692?sp_atk=e59c5e32-ba20-43d5-b97a-f643b35ef930&xptdk=e59c5e32-ba20-43d5-b97a-f643b35ef930', 'https://www.tokopedia.com/dwimulya/nivea-luminous-630-spotclear-intensive-treatment-serum-30ml?extParam=ivf%3Dfalse&keyword=nivea+luminous+630+spotclear+intensive&search_id=20241124140401562F41F7E18E4E202YT1&src=search', 1),
(22, 4, 1, 5, 6, 'Calm Down! Skinpair Barrier', 'https://images.somethinc.com/uploads/products/thumbs/800x800/SERUM-27.jpg', 'Rp139.000 - Rp145.000', 'Calming serum dengan formula gentle, ringan & vegan yang menyasar kulit kemerahan & sensitif. Dilengkapi paten inovatif Calm Down, Madagascar Centella Asiatica, 5X Growth Factor Peptides & Panthenol untuk menenangkan kulit dengan iritasi ringan, mencegah hilangnya kelembaban & menutrisi kulit. Dengan pH 5,5 & bahan low-irritant, serum ini cocok untuk semua tipe kulit, bahkan kulit paling sensitif. Serum ini akan membuat kulit menjadi kuat, lembut, kenyal, serta warna kulit lebih merata.', 'Aqua, Butylene Glycol, Pentylene Glycol, Polyglyceryl-4 Caprate, Maris Aqua (Sea Water), Ammonium Polyacryloyldimethyl Taurate, Panthenol, Propanediol, Madecassoside, Acetyl Glutamine, Lecithin, Disodium EDTA, Ethylhexylglycerin, Bacillus/Soybean/Folic Acid Ferment Extract, Caprylyl Glycol, SH-Oligopeptide-1, SH-Oligopeptide-2, SH-Polypeptide-1, SH-Polypeptide-11, SH-Polypeptide-9, Sodium Hyaluronate, Xanthan Gum, Emiliania Huxleyi Extract, 1.2 Hexanediol.', '1. Pompa 3-5 pump serum ke telapak tangan.\n2. Tekan perlahan telapak tangan ke wajah & leher, pijat dengan gerakan ke luar & ke atas sampai benar-benar merata pada pagi & malam hari.\n3. Tunggu selama 1-3 menit hingga produk terserap sepenuhnya.\n4. Layer dengan serum Somethinc lain, lanjutkan dengan pelembab Calm Down R-Cover Cream.', 0, 'https://shopee.co.id/SOMETHINC-Calm-Down!-Skinpair-Barrier-Serum-(Madagascar-Centella-Asiatica-Skin-Barrier-Kulit-Sensitif-Kulit-Iritasi)-i.195455930.12198248140?sp_atk=362e45e0-da77-4535-9f00-5e2213ec4c1e&xptdk=362e45e0-da77-4535-9f00-5e2213ec4c1e', 'https://www.tokopedia.com/guardian-officia/somethinc-calm-down-skinpair-barrier-serum-20ml?extParam=ivf%3Dfalse&keyword=somethinc+calm+down!+skinpair+barrier&search_id=202411241411362BF4EF4A2B083F360NF6&src=search', 1),
(23, 4, 5, 3, 19, 'Probiotic Barrier Ampoule', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/FIRST_LAB_Probiotic_Barrier_Ampoule_50ml.png', 'Rp283.000 - Rp300.000', 'Ampul dengan kemampuan 4 multi-efek yaitu menenangkan, melembapkan, perkuat skin barrier dan juga sekaligus memudarkan noda di wajah. Membantu meningkatkan efek pelembab dan nutrisi yang lebih baik dengan menyiapkan fondasi kulit yang baik, juga membantu menghaluskan kulit bertekstur.', 'WATER (AQUA), GLYCERIN, GLYCERETH-26, PROPANEDIOL, BUTYLENE GLYCOL, NIACINAMIDE, 1,2-HEXANEDIOL, BETAINE, HYDROXYETHYL ACRYLATE/SODIUM ACRYLOYLDIMETHYL TAURATE COPOLYMER, SODIUM HYALURONATE, LIMNANTHES ALBA (MEADOWFOAM) SEED OIL, LACTOBACILLUS FERMENT LYSATE, TREHALOSE, CELLULOSE GUM, POLYGLUTAMIC ACID, XANTHAN GUM, STREPTOCOCCUS THERMOPHILUS FERMENT, ETHYLHEXYLGLYCERIN, ADENOSINE, LACTOBACILLUS FERMENT, SORBITAN ISOSTEARATE, HYDROGENATED LECITHIN, POLYGLYCERYL-3 METHYLGLUCOSE DISTEARATE, HYDROLYZED CORN STARCH, SUCROSE, BACILLUS FERMENT, SODIUM SURFACTIN, BIFIDA FERMENT EXTRACT, LACTIC ACID, XYLITOL, RAFFINOSE, PANTHENOL, GLUCOMANNAN, FRUCTOOLIGOSACCHARIDES, ECTOIN, COLLAGEN, BIFIDA FERMENT FILTRATE, SORBITOL, SODIUM BENZOATE, CERAMIDE NP, MACADAMIA INTEGRIFOLIA SEED OIL, SODIUM CHLORIDE, TRIETHYLHEXANOIN, SQUALANE, PHOSPHOLIPIDS, CETEARYL ALCOHOL, HYDROGENATED POLYDECENE, PHYTOSPHINGOSINE, CHOLESTEROL, HIPPOPHAE RHAMNOIDES OIL, FRAGRANCE (PARFUM)', '1. Setelah mencuci muka setiap pagi dan sore, oleskan jumlah yang memadai ke tangan atau wajah Anda pada tahap menggunakan ampul.\n2. Aplikasikan di sepanjang tekstur kulit dan tepuk ringan untuk penyerapan.', 0, 'https://shopee.co.id/FIRST-LAB-PROBIOTIC-BARRIER-AMPOULE-50-ML-i.109981258.15166626496?sp_atk=a54cccdc-ea19-4e9d-b3e3-cb102d0c93e9&xptdk=a54cccdc-ea19-4e9d-b3e3-cb102d0c93e9', 'https://www.tokopedia.com/yiskaevikaa/first-lab-probiotic-barrier-ampoule-50-ml-berkualitas?extParam=ivf%3Dfalse&keyword=firstlab+probiotic+barrier+ampoule&search_id=2024112414141545F63534CB426C286PIB&src=search&refined=true', 1),
(24, 4, 3, 8, 20, 'Vit C Booster Serum', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/STU-TVS-00007.000_8_1.png', 'Rp150.000 - Rp177.000', 'Jarkeen Vit C Booster Serum adalah serum wajah yang diformulasikan khusus untuk mencerahkan kulit, mengurangi hiperpigmentasi, dan memberikan perlindungan terhadap kerusakan akibat radikal bebas. Diperkaya dengan Vitamin C berkualitas tinggi, serum ini bekerja sebagai antioksidan kuat untuk membantu memperbaiki tekstur kulit dan mengurangi tanda-tanda penuaan dini. Cocok untuk semua jenis kulit, terutama bagi yang ingin mendapatkan kulit yang lebih cerah dan sehat.', 'Aqua, Ascorbic Acid, Niacinamide, Sodium Hyaluronate, Glycerin, Alpha-Arbutin, Ferulic Acid, Panthenol, Aloe Barbadensis Leaf Extract, Phenoxyethanol, Ethylhexylglycerin, Fragrance.', '1. Bersihkan wajah menggunakan pembersih wajah yang sesuai dengan jenis kulit Anda.\n2. Keringkan wajah dengan handuk bersih secara perlahan.\n3. Teteskan 2-3 tetes serum ke telapak tangan atau langsung ke wajah.\n4. Oleskan secara merata ke seluruh wajah dan leher, hindari area mata.\n5. Tepuk-tepuk lembut untuk membantu penyerapan serum ke dalam kulit.\n6. Gunakan serum ini pada pagi dan malam hari untuk hasil yang maksimal.\n\n*Tips:*\n- Pada pagi hari, gunakan sunscreen setelah pemakaian serum untuk melindungi kulit dari sinar UV.\n- Simpan serum di tempat sejuk dan terhindar dari sinar matahari langsung untuk menjaga kualitas Vitamin C.', 0, 'https://shopee.co.id/JARKEEN-Vit-C-Booster-Serum-15ml-i.68111.5782631341?sp_atk=b790d857-29f4-4e71-a6d9-a2259eb8352c', 'https://www.tokopedia.com/heilunarshop/jarkeen-vit-c-booster-serum-15ml?extParam=ivf%3Dfalse&keyword=jarkeen+vit+c+booster+serum&search_id=202411241522417D06EAD75F130B38AV4T&src=search', 1),
(25, 5, 1, 3, 21, 'Hydracool Ceraspray Sunscreen', 'https://nihonmart.id/pub/media/catalog/product/cache/8a3fa81d90974d9a7299f2eff309979f/h/y/hydracool_ceraspray_sunscreen-min.png', 'Rp65.000 - Rp71.000', 'Sunscreen Spray yang praktis untuk melembabkan dan melindungi kulit dari pengaruh buruk sinar matahari & radiasi bluelight. Di formulasikan dengan gabungan Collagen Water, 7x Ceramides dan CICA pada kulit serta melembabkan agar kulit kenyal dan halus. Sunscreen spray mudah diserap & tidak meninggalkan whitecast pada kulit, sehingga aman digunakan sebelum dan sesudah makeup (Touch Up).', 'Water, Ethylhexyl Methoxycinnamate, Alcohol, C12-15 Alkyl Benzoate, Collagen Water, Octocrylene, C13-16 Isoparaffin, Dimethicone, Glycerin, Butyl Methoxydibenzoylmethane, Lauryl PEG-9 Polydimethylsiloxyethyl Dimethicone, Disodium EDTA, Triethanolamine, Phenylbenzimidazole Sulfonic Acid, Methylene Bis-Benzotriazolyl Tetramethylbutylphenol, Ethylhexyl Salicylate, Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine, Phenoxyethanol, Centella Asiatica Leaf Extract, Glycyrrhiza Glabra (Licorice) Root Extract, Calendula Officinalis Extract, Bisabolol, Ceramides NG, Ceramides AS, Ceramides NS, Aloe Barbadensis Leaf Juice, Parfum, Ceramides AP, Ceramides EOS, Ceramides EOP, Ceramides NP.', 'Kocok dahulu sebelum dipakai, tekan tombol sprayer bagian belakang dan semprotkan sunscreen pada wajah dengan mata dan mulut tertutup. Gunakan pada step akhir skincare, direkomendasikan untuk re-apply sunscreen.', 0, 'https://shopee.co.id/Azarine-Ceraspray-Sunscreen-Spray-SPF-50-PA-with-cooling-sensation-50ml-UV-Defender-UV-Protector-Outdoor-Sunscreen-Mist-i.80036545.24159177602?sp_atk=d8266fb2-1f46-4847-b58e-b984bd9032b0&xptdk=d8266fb2-1f46-4847-b58e-b984bd9032b0', 'https://www.tokopedia.com/azarinecosmetics/azarine-ceraspray-sunscreen-spray-spf-50-pa-cooling-sensation-50ml', 1),
(26, 5, 4, 6, 22, 'UV Fresh & Bright Instant Cover', 'https://kao-h.assetsadobe3.com/is/image/content/dam/sites/kao/www-kao-com/id/id/products/biore/bio_fb_instantcover_00.jpg?fit=fit%2C1&wid=640', 'Rp38.000 - Rp41.000', 'UV Fresh & Bright Instant Cover adalah tabir surya dengan formula ringan yang memberikan perlindungan optimal dari sinar UVA dan UVB. Produk ini diformulasikan khusus untuk memberikan hasil akhir matte alami yang membantu mengurangi kilap berlebih di wajah. Selain itu, tabir surya ini memiliki efek brightening instan, membuat kulit terlihat cerah secara alami setelah diaplikasikan. Cocok untuk penggunaan sehari-hari pada semua jenis kulit, terutama kulit berminyak dan kombinasi.', 'Water, Alcohol Denat, Zinc Oxide (Nano), Ethylhexyl Methoxycinnamate, Ethylhexyl Triazone, Sorbitan Sesquioleate, Neopentyl Glycol Diethylhexanoate, Butylene Glycol, Neopentyl Glycol Dicaprate, Niacinamide, Sodium Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Diethylamino Hydroxybenzoyl Hexyl Benzoate, Isohexadecane, Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine, Triethoxycaprylylsilane, Behenyl Alcohol, Polysorbate 60, Polysorbate 80, Xanthan Gum, Aluminum Hydroxide, Dimethicone, Sorbitan Oleate, Disodium EDTA, Tocopheryl Acetate, BHT, Tocopherol, Ci 77491, Ci 77499, Ci 77891.', '1. Bersihkan wajah Anda dengan pembersih wajah yang sesuai dengan jenis kulit Anda.\n2. Keringkan wajah menggunakan handuk bersih dengan cara ditepuk perlahan.\n3. Ambil produk secukupnya (sekitar 2 ruas jari untuk wajah dan leher).\n4. Oleskan secara merata ke seluruh wajah dan leher, hindari area mata.\n5. Tepuk-tepuk ringan untuk membantu penyerapan produk ke dalam kulit.\n6. Gunakan sebagai langkah terakhir dalam rutinitas perawatan kulit pagi hari sebelum menggunakan makeup.\n\n**Tips:**\n- Aplikasikan 15-20 menit sebelum terpapar sinar matahari.\n- Ulangi pemakaian setiap 2-3 jam, terutama setelah berkeringat atau terkena air, untuk perlindungan maksimal.', 0, 'https://shopee.co.id/Biore-UV-Fresh-Bright-Instant-Cover-Sunsncreen-SPF-50-PA-(433613)-i.16735262.21551960620?sp_atk=1da46625-24d8-4486-a89b-fe78e7d331c8&xptdk=1da46625-24d8-4486-a89b-fe78e7d331c8', 'https://www.tokopedia.com/watsons/biore-uv-fresh-bright-spf-50-pa-instant-cover-30g?extParam=ivf%3Dfalse&keyword=biore+uv+fresh+%26+bright+instant+cover...&search_id=20241124152706562F41F7E18E4E328VHL&src=search', 1),
(27, 5, 5, 5, 3, 'Skin Buddy Sun Protection', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/EMINA_Skin_Buddy_Sun_Protection.png', 'Rp38.000 - Rp42.000', 'Emina Skin Buddy Sun Protection adalah sunscreen ringan yang dirancang untuk melindungi kulit dari paparan sinar matahari dengan SPF 30 PA+++. Formula ini membantu mencegah kerusakan akibat sinar UVA dan UVB, serta menjaga kelembapan kulit. Dengan tekstur ringan yang mudah meresap, produk ini cocok untuk kulit remaja maupun dewasa yang aktif.\n\nProduk ini cocok untuk semua jenis kulit, termasuk kulit berminyak dan sensitif, karena formulanya yang lembut dan tidak menyumbat pori-pori.', 'Aqua, Ethylhexyl Methoxycinnamate, Glycerin, Propylene Glycol, Zinc Oxide, Phenylbenzimidazole Sulfonic Acid, Cetearyl Alcohol, Dimethicone, Ethylhexylglycerin, Tocopheryl Acetate (Vitamin E), Sodium Polyacrylate, Xanthan Gum, Fragrance, Phenoxyethanol.', '1. Bersihkan wajah menggunakan pembersih wajah yang sesuai dengan jenis kulit Anda.\n2. Keringkan wajah dengan handuk bersih.\n3. Ambil sunscreen secukupnya (sekitar 2 ruas jari untuk wajah dan leher).\n4. Oleskan secara merata ke seluruh wajah dan leher, hindari area mata.\n5. Gunakan sunscreen ini sebagai langkah terakhir dalam rutinitas skincare pagi Anda.\n6. Ulangi pemakaian setiap 2-3 jam, terutama jika terpapar sinar matahari langsung atau setelah berkeringat.', 0, 'https://shopee.co.id/Emina-Skin-Buddy-Sun-Protection-SPF-30-PA--i.380316562.10384641463?sp_atk=bbec4d47-c149-4925-9732-0da1ec77fc87&xptdk=bbec4d47-c149-4925-9732-0da1ec77fc87', 'https://tokopedia.link/QC6mN30UMOb', 1),
(28, 5, 1, 5, 23, 'Sunfriends Soothing Sunscreen', 'https://images.soco.id/b6dfc9ab-a60e-4d2a-9d3a-b5ae3b364768-.jpg', 'Rp78.000 - Rp83.000', 'True to Skin Sun Friends SPF 50 PA ++++ adalah Sunscreen Gel generasi terbaru yang memiliki tekstur ultra ringan, no white cast, cepat meresap dan tidak lengket di kulit hingga membuat pemakaian sangat nyaman. Sun Friends di formulasikan dengan 4X UV filter yang dapat melindungi kulitmu dari paparan matahari dan sinar UV serta memberikan nutrisi dengan kandungan Matcha, Cica, Betaine yang dapat melembabkan wajah serta memberikan nutrisi ekstra pada kulit.', 'Aqua/Water, Butyrospermum Parkii (Shea) Butter, Butylene Glycol, Tridecyl Stearate, Isodecyl Salicylate, PEG-30 Dipolyhydroxystearate, Tridecyl Trimellitate, Persea Gratissima (Avocado) Oil, Isocetyl Stearoyl Stearate, Propylene Glycol, Dipentaerythrityl Hexacaprylate/Hexacaprate, Sorbitan Sesquioleate, Magnesium Sulfate, Phenoxyethanol, Hydrogenated Castor Oil, Sodium PCA, Ozokerite, Methylparaben, Tocopheryl Acetate, Isopropyl Palmitate, Disodium EDTA, Copper Pca, Butylparaben, Ethylparaben, Propylparaben, Helianthus Annuus (Sunflower) Seed Oil, CI 75130/Beta-Carotene, Tocopherol, Citric Acid.', 'Oleskan pada area wajah 15 menit sebelum melakukan kegiatan / aktivitas di luar ruangan.', 0, 'https://shopee.co.id/True-to-Skin-Sunfriends-Sunscreen-Gel-SPF-50-PA--i.344023672.18142444066?sp_atk=cb4e2358-e8c1-4078-9514-427db1597c9f&xptdk=cb4e2358-e8c1-4078-9514-427db1597c9f', 'https://www.tokopedia.com/toocuteid/true-to-skin-sunfriends-soothing-sunscreen-gel-30-gr?extParam=ivf%3Dfalse&keyword=true+to+skin+sunfriends+soothing+sunscreen&search_id=2024112415283813AF71970A824A32327W&src=search', 1);
INSERT INTO `produk` (`id`, `id_jenis`, `id_tipe_kulit`, `id_masalah`, `id_brand`, `nama_produk`, `gambar`, `kisaran_harga`, `deskripsi`, `komposisi`, `cara_pemakaian`, `rating_produk`, `link_shopee`, `link_tokopedia`, `id_kategori`) VALUES
(29, 5, 1, 5, 24, 'UV Shield Aqua Fresh Essence', 'https://images.soco.id/dafe6f6b-c075-4c25-ac08-863ef34a6bbf-image-0-1724657815528', 'Rp61.000 - Rp66.000', 'Wardah UV Shield Aqua Fresh Essence SPF50 PA++++, sunscreen dengan Broad Spectrum Protection, 50x lebih optimal* menjaga kulit dari sinar UV A/UV B serta pancaran blue light berlebih. Dengan inovasi formula 0% alkohol namun tetap ringan dan tidak lengket, serta Aquafused Technology di dalamnya yang menjadikan sunscreen terasa segar seperti air dan terus menerus menghidrasi kulit.', 'Aqua/Water, Butyrospermum Parkii (Shea) Butter, Butylene Glycol, Tridecyl Stearate, Isodecyl Salicylate, PEG-30 Dipolyhydroxystearate, Tridecyl Trimellitate, Persea Gratissima (Avocado) Oil, Isocetyl Stearoyl Stearate, Propylene Glycol, Dipentaerythrityl Hexacaprylate/Hexacaprate, Sorbitan Sesquioleate, Magnesium Sulfate, Phenoxyethanol, Hydrogenated Castor Oil, Sodium PCA, Ozokerite, Methylparaben, Tocopheryl Acetate, Isopropyl Palmitate, Disodium EDTA, Copper Pca, Butylparaben, Ethylparaben, Propylparaben, Helianthus Annuus (Sunflower) Seed Oil, CI 75130/Beta-Carotene, Tocopherol, Citric Acid.', 'Oleskan pada area wajah 15 menit sebelum melakukan kegiatan/aktivitas di luar ruangan.', 0, 'https://shopee.co.id/Wardah-UV-Shield-Aqua-Fresh-Sunscreen-Serum-SPF-50-PA-30-ml-Sunscreen-yang-Melembabkan-Kulit-Kering-Memperbaiki-Skin-Barrier-Melindungi-Kulit-secara-Maksimal-Ringan-Cepat-Meresap-Tidak-Lengket-No-Whitecast-Non-comedogenic-0-Alkohol-i.59763733.6942920160?sp_atk=10eaacdd-55bf-477e-a0cc-205a55571e8d&xptdk=10eaacdd-55bf-477e-a0cc-205a55571e8d', 'https://www.tokopedia.com/watsons/wardah-uv-shield-aqua-fresh-essence-spf50-pa-30ml?extParam=ivf%3Dfalse&keyword=wardah+uv+shield+aqua+fresh+essence...&search_id=202411241532083D7D6A20C1DDD4334YN4&src=search', 1),
(30, 6, 5, 8, 2, 'Niacinamide Bright Boost Clay', 'https://images.soco.id/916e2695-aa14-4a0b-8e18-978e88cf7b04-image-0-1720506185575', 'Rp110.000 - Rp118.000', 'SKINTIFIC Niacinamide Bright Boost Clay Stick adalah produk pendorong pencerahan yang diresapi dengan Niacinamide, Pink Sea Salt, dan Tranexamic Acid untuk mencerahkan dan meratakan warna kulit. Sinergi untuk mendapatkan kulit bercahaya dan bercahaya kulit Anda.', 'Water, Kaolin, Glycerin, Niacinamide (Vitamin B3), Bentonite, Butylene Glycol, Propylene Glycol, Sodium Chloride, Phenoxyethanol, Ethylhexylglycerin, Fragrance, Sodium Hydroxide, Disodium EDTA, Allantoin.', '1. Bersihkan wajah sebentar.\n2. Buka tutupnya dan putar tombol di bagian bawah tabung untuk mengeluarkan masker tanah liat dalam jumlah yang sesuai.\n3. Sebarkan masker pada wajah secara merata, lalu tunggu selama 10 - 15 menit.\n4. Bilas sampai bersih dengan air dingin.\n5. Gunakan 2-3x per minggu untuk hasil yang optimal.\n6. Untuk kulit sensitif, biarkan selama 5 menit dan secara bertahap tingkatkan jumlah waktu hingga 15 menit.', 0, 'https://shopee.co.id/search?keyword=skintific%20niacinamide%20bright%20boost%20clay', 'https://www.tokopedia.com/skintific/skintific-niacinamide-bright-boost-clay-mask-stick-masker-wajah-face-cleansing-stick-anti-pores-acne-jerawat-komedo-cleansing-masker-25g-centella-masker-wajah-mud-mask-facial-mask-wash-off-mask-mugwort-acne', 1),
(31, 6, 1, 5, 25, 'Vita Genic Jelly Mask Relaxing', 'https://images.soco.id/bac872ac-4584-42c3-b9c2-bdd8b04dba07-.jpg', 'Rp14.000 - Rp20.000', 'BANOBAGI VITA COCKTAIL FOIL MASK berfungsi Melembabkan kulit wajah secara maksimal dan menyeluruh.', 'Water, Panthenol, Methylpropanediol, Niacinamide, Glycerin, Thiamine HCl, Riboflavin, Niacin, Pantothenic Acid, Biotin, Folic Acid, Ascorbic Acid, Tocopherol, Trehalose, Sodium Hyaluronate, Allantoin, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Xanthan Gum, Adenosine, Dipotassium Glycyrrhizate.', 'Setelah dibersihkan dan mengencangkan, oleskan masker ke kulit dan biarkan selama 15-20 menit. Setelah melepas masker, tepuk-tepuk perlahan esensi yang tersisa ke kulit untuk penyerapan yang lebih baik.', 0, 'https://shopee.co.id/Banobagi-Vita-Genic-Jelly-Mask-Vitalizing-Whitening-Relaxing-Cica-Bano-Bagi-Masker-Medan-Elystuff.id-i.286847618.23345379928?sp_atk=19a31128-573f-4bd0-b6a5-64dbbc8aa207&xptdk=19a31128-573f-4bd0-b6a5-64dbbc8aa207', 'https://www.tokopedia.com/tokomozza-23/paling-dicari-banobagi-vita-genic-jelly-mask-relaxing?extParam=ivf%3Dfalse&keyword=banobagi+vita+genic+jelly+mask+relaxing&search_id=202411250227264BED04E32FF6060DANU2&src=search', 1),
(32, 6, 3, 4, 4, 'Perfect Aqua Bouncy Mask', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/Perfect_Aqua_Bouncy_Mask_-_Bouncy_Moist.png', 'Rp31.000 - Rp33.000', 'Varian Bouncy Bright Mask diformulasikan untuk mencerahkan dan melembapkan kulit secara maksimal. Diformulasikan dengan ekstrak Royal Jelly dari lebah madu berkualitas yang mengandung antioksidan yang menetralisir radikal bebas, serta ekstrak Sakura dan Licorice yang bantu mencerahkan kulit wajah. Masker ini juga mengandung Silk Cocoon Essence dan Double Hyaluronic Acid yang melembapkan dan menutrisi kulit secara maksimal, sehingga kelenturannya tetap terjaga.', 'Water (aqua), Butylene Glycol, Dipropylene Glycol, Glycerin, Beheneth-20, Copernicia Cerifera (Carnauba) Wax (Copernicia Cerifera Cera), PEG-20 Glyceryl Isostearate, PEG/PPG-14/7 Dimethyl Ether, Phenoxyethanol, Xanthan Gum, Methylparaben, Sodium Citrate, Celulose Gum, Disodium EDTA, Citric Acid, Sodium Hyaluronate, Sericin, Tocopherol, Potassium Sorbate, Sodium Acetylated Hyaluronate, Royal Jelly Extract, Prunus Speciosa Leaf Extract, Glycyrrhiza Glabra (Licorice) Root Extract.', '1. Gunakan masker pada wajah yang sudah bersih,\n2. Diamkan selama 10-15 menit,\n3. Lepaskan masker dan tepuk sisa essence di wajah untuk memaksimalkan penyerapan.', 0, 'https://shopee.co.id/-New-Senka-Perfect-Aqua-Bouncy-Mask-Bouncy-Bright-i.118795035.21632577353?sp_atk=5f8bf9e5-d2fe-48b7-bde1-5de615a01de4&xptdk=5f8bf9e5-d2fe-48b7-bde1-5de615a01de4', 'https://www.tokopedia.com/nihonmart/senka-perfect-aqua-bouncy-mask-bouncy-bright?extParam=ivf%3Dfalse&keyword=senka+perfect+aqua+bouncy+mask&search_id=20241125023331BD6514B695B282089RFO&src=search', 1),
(33, 6, 1, 2, 26, 'Gokujyun Alpha Ultimate', 'https://rohto.co.id/assets/uploads/product/20220511112412.png', 'Rp95.000 - Rp103.000', 'Hada Labo Gokujyun Alpha Ultimate Mask merupakan masker yang mampu samarkan garis halus, membantu elastisitas kulit, dan menghidrasi. Sehingga kulit tampak muda, halus, bercahaya.', 'Water, Butylene Glycol, Glycerin, PEG-20, Sorbitan Isostearate, Caprylic/Capric Triglyceride, PPG-10 Methyl Glucose Ether, Methylparaben, Triethanolamine, Sodium Hyaluronate, Carbomer, Hydroxyethylcellulose, Tocopherol, Hydrolyzed Soy Protein, Limnanthes Alba (Meadowfoam) Seed Oil, Hydrolyzed Collagen, BHT, Disodium EDTA, Retinyl Palmitate, Helianthus Annuus Seed Oil, Sodium Acetylated Hyaluronate, Thioctic Acid, Zea Mays Oil, Beta-Carotene.', '1. Bersihkan wajah dengan Hada Labo face wash dan gunakan Hada Labo lotion.\n2. Buka lipatan masker & tempelkan masker hingga menutupi wajah.\n3. Diamkan selama 10-15 menit, lalu lepaskan masker.\n4. Pijat dengan lembut essence yang tersisa pada wajah hingga terserap sempurna.', 0, 'https://shopee.co.id/Hada-Labo-Gokujyun-Alpha-Ultimate-Anti-Aging-Sheet-Mask-88-rohto-official-store-Ayo-Beli-i.596650105.16583787556?sp_atk=2da36901-f9a0-4271-a064-598638051f3d&xptdk=2da36901-f9a0-4271-a064-598638051f3d', 'https://www.tokopedia.com/sbeauty-14/hadalabo-gokujyun-alpha-ultimate-anti-aging-sheet-mask?extParam=ivf%3Dfalse&keyword=hada+lado+gokujyun+alpha+ultimate&search_id=20241125023916E81B0449AC250A1BDOVJ&src=search&refined=true', 1),
(34, 6, 1, 5, 27, 'Watermelon Glow Sheet Mask', 'https://www.lacoco.co.id/wp-content/uploads/2022/05/Watermelon-Sheet-Mask.jpg', 'Rp150.000 - Rp156.000', 'Watermelon Glow Sheet Mask diformulasikan dengan kandungan utama berupa Watermelon Fruit Extract yang memiliki manfaat untuk menghidrasi wajah. Manfaat lainnya yaitu membantu menenangkan kulit dan membantu meningkatkan produksi sel.', 'Water, Butylene Glycol, Glycerin, Acrylamide/Sodium Acryloyldimethyltaurate Copolymer, C13-C14 isoparaffin, Phenyl Trimethicone, Phenoxyethanol, Laureth-7, Cyclopentasiloxane, Lactic Acid, Aloe Barbadensis Leaf Juice, Citrullus Lanatus (Watermelon) Fruit Extract.', '1. Buka lipatan dengan hati-hati. Masker dilindungi dengan dua lapisan jaring.\n2. Lepaskan lapisan pertama, aplikasikan lembar masker ke wajah Anda, lalu lepas lapisan pelindung luar.\n3. Biarkan selama 15-20 menit.\n4. Lepaskan masker dan biarkan sisa meresap ke kulit Anda.\n5. Gunakan 3 kali seminggu. Untuk hasil terbaik, gunakan Lacoco Watermelon Glow Mask setelahnya.', 0, 'https://shopee.co.id/MASKER-WAJAH-LACOCO-WATERMELON-GLOW-SHEET-MASK-i.241703979.18713336949?sp_atk=a107e6d7-bd0b-4a52-aa3a-1cb32160fbb8&xptdk=a107e6d7-bd0b-4a52-aa3a-1cb32160fbb8', 'https://www.tokopedia.com/lacocoofficial-1/lacoco-watermelon-glow-sheet-mask-masker-wajah?extParam=ivf%3Dfalse&keyword=lacoco+watermelon+glow+sheet+mask&search_id=202411250256092BF4EF4A2B083F188XA1&src=search', 1),
(35, 1, 4, 1, 28, 'Acne Fight Face Wash', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/ELVICTO_Acne_Fight_Face_Wash.jpg', 'Rp62.000 - Rp80.000', 'Elvicto anti acne facewash merupakan sabun pembersih wajah yang diformulasikan khusus untuk mengatasi masalah jerawat tanpa membuat kulit menjadi kering. Efektif mengatasi masalah jerawat, komedo, beruntusan, menenangkan kulit kemerahan, dan mengontrol minyak berlebih.', 'Aqua, Sodium Laureth Sulfate, Cocamidopropyl Betaine, Cocamide DEA, Glycerin, Propylene Glycol, Salicylic Acid, Aloe Barbadensis Leaf Extract, Camellia Sinensis Leaf Extract, Chlorphenesin, Sodium Chloride, Allantoin, Melaleuca Alternifolia Leaf Extract, PEG-150 Distearate, Disodium EDTA, Citric Acid, Potassium Sorbate, Sodium Benzoate.', '1. Basahi wajah terlebih dahulu dengan air.\n2. Usapkan Elvicto Acne Fight Face Wash pada telapak tangan lalu busakan dan aplikasikan pada wajah dengan pijat perlahan dan memutar ke arah luar.\n3. Bilas dengan air hingga bersih.', 0, 'https://shopee.co.id/ELVICTO-ANTI-ACNE-FACE-WASH-Facial-Wash-Pria-untuk-Kulit-Berjerawat-Sabun-Wajah-Pria-Dengan-Kulit-Berjerawat-i.168074809.20688358534?sp_atk=877e89c8-69bb-4125-8cc1-f834111b89f1&xptdk=877e89c8-69bb-4125-8cc1-f834111b89f1', 'https://www.tokopedia.com/elvictomastermen/elvicto-acne-fight-face-wash?extParam=ivf%3Dfalse&keyword=elvicto+acne+fight+face+wash&search_id=20241125025909562F41F7E18E4E33ADMS&src=search', 1),
(36, 1, 2, 5, 8, 'Natural Sublime Facial Cleanser', 'https://images.soco.id/image-0-1602838362856', 'Rp107.000 - Rp139.000', 'Avoskin Natural Sublime Facial Cleanser ini merupakan Low pH Cleanser yang mengandung Marula Oil, Kale Extract, Cactus Extract, Niacinamide, dan Pentavitin untuk membantu memaksimalkan proses pembersihan kulit tanpa meninggalkan efek kulit kering, membantu mencerahkan kulit, melembapkan kulit, dan menjaga skin barrier. Produk ini hadir dengan minimal ingredients dan kemasan plastik yang eco-friendly.', 'Water, Cocamidopropyl Betaine, Glycerin, Lauramidopropyl Hydroxysultaine, Sodium Cocoyl Glycinate, Sodium Chloride, Hydroxypropyl Methylcellulose, Niacinamide, Disodium Cocoyl Glutamate, Polysorbate 20, Citric Acid, Coconut Acid, Sodium Cocoate, Xanthan Gum, Pentylene Glycol, Saccharide Isomerate, Butylene Glycol, Sodium Benzoate, Aloe Barbadensis Leaf Extract, Hydrolyzed Vegetable Protein, Disodium EDTA, Sodium Bisulfite, Cereus Grandiflorus (Cactus) Flower Extract, Potassium Sorbate, Sodium Hyaluronate, Sclerocarya Birrea Seed Oil, Leuconostoc/Radish Root Ferment Filtrate, Sodium Citrate, Rosa Damascena Flower Water, Rosa Damascena Flower Oil.', '1. Basahi kulit wajah dengan air.\n2. Tuangkan Avoskin Natural Sublime Facial Cleanser pada telapak tangan secukupnya.\n3. Campurkan dengan sedikit air dan aplikasikan ke seluruh area wajah. Pijat dengan lembut.\n4. Bilas dengan air hingga bersih.', 0, 'https://shopee.co.id/Avoskin-Natural-Sublime-Facial-Cleanser-100ml-Pembersih-Wajah-i.940220394.26566180900?sp_atk=65f7e257-4eb5-490d-bce2-2d3328c138ab&xptdk=65f7e257-4eb5-490d-bce2-2d3328c138ab', 'https://www.tokopedia.com/arloji14/avoskin-natural-sublime-facial-cleanser-100ml?extParam=ivf%3Dfalse&src=topads', 1),
(37, 1, 3, 8, 26, 'Shirojyun Whitening Face Wash', 'https://rohto.co.id/assets/uploads/product/20201110150240.png', 'Rp49.000 - Rp52.000', 'Hada Labo Shirojyun Whitening Face Wash merupakan sabun cuci muka yang mampu mengangkat kotoran dan minyak dari kulit sekaligus mencerahkan. Diperkaya dengan Arbutin dan whitening Extract untuk efek pencerah ganda. Membantu membuat warna kulit lebih merata sehingga terlihat lebih cerah. Dan Mengandung Hyaluronic Acid untuk meningkatkan kelembaban secara intensif sehingga kulit terasa tetap elastis.', 'Sodium cocoyl glycinate, glycerin, cocamidopropyl betaine, bulene glycol, potassium cocoyl glycinate, water, decyl glucoside, hydroxypropyl starch phosphate, PEG-400, sodium lauroyl, aspartate, sodium steaoryl glutamate, glyceryl stearate SE, polyquaternium-52, PEG-32, citric acid, polyquaternium.', '1. Tuangkan secukupnya pada telapak tangan. Usapkan ke seluruh wajah secara perlahan dan merata.\n2. Bilas hingga bersih dengan air, hindari daerah mata.', 0, 'https://shopee.co.id/Hada-Labo-Shirojyun-Face-Wash-100g-i.10689.104768690?sp_atk=6cfc76b9-9b07-4cce-ab58-87b74b74eaee&xptdk=6cfc76b9-9b07-4cce-ab58-87b74b74eaee', 'https://www.tokopedia.com/7purple/100g-hada-labo-shirojyun-ultimate-whitening-face-wash?extParam=ivf%3Dfalse&keyword=hada+lado+shirojyun+whitening+face+wash&search_id=202411250303224BED04E32FF60612B4CJ&src=search&refined=true', 1),
(38, 1, 4, 1, 18, 'MicellAir Oil & Acne Care', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/B-removebg-preview.png', 'Rp71.000 - Rp101.000', 'Nivea Oil & Acne Care MicellAIR adalah micellar water yang dapat membantu membersihkan kotoran, debu, make-up residu, dan bakteri penyebab jerawat. Micellar water ini mengandung ekstrak magnolia yang membantu mengontrol minyak berlebih pada wajah. Dengan formula oxygen boost, produk ini mampu membuat kulit wajah terhidrasi dan bebas bernafas.', 'Aqua, Poloxamer 184, PEG-40 Hydrogenated Castor Oil, Phenoxyethanol, Glycerin, 1,2-Hexanediol, PEG-7 Glyceryl Cocoate, Sorbitol, Trisodium EDTA, Decyl Glucoside, Polyquaternium-10, Citric Acid, Aloe Barbadensis Leaf Juice Powder, Magnolia Officinalis Bark Extract, Sodium Cocoyl Glutamate, Glyceryl Glucoside, Sodium Chloride, Sodium Acetate, Propylene Glycol., Propylene Glycol', 'Tuang pada kapas lalu usapkan pada area mata dengan gerakan memutar secara perlahan', 0, 'https://shopee.co.id/NIVEA-Micellar-Water-MicellAir-Oil-Acne-Care-400ml-Untuk-kulit-berjerawat-sensitif-i.110573301.18185031124?sp_atk=f2a08b41-1409-4f95-ba07-446c6b405737&xptdk=f2a08b41-1409-4f95-ba07-446c6b405737', 'https://www.tokopedia.com/dwimulya/nivea-micellair-skin-breathe-oil-acne-care-micellar-water-400ml?extParam=ivf%3Dfalse%26keyword%3Dnivea+micellair+oil+%26+acne+care%26search_id%3D202411250306358C30E2584BF176330TB3%26src%3Dsearch', 1),
(39, 1, 4, 1, 29, 'Micellar Water Salicylic Blue', 'https://guardianindonesia.co.id/media/catalog/product/a/6/a6b0f71db4a969b65f7490d4582014d02b393004067db9df2e1d229e070ab152.jpeg?auto=webp&format=pjpg&width=960&height=1200&fit=cover', 'Rp37.000 - Rp38.000', 'Garnier menggabungkan Teknologi Micelles dengan Salicylic BHA untuk melawan jerawat serta Vitamin C yang mencerahkan. Micelles mengangkat kotoran, debu, dan makeup seperti magnet, sementara Salicylic BHA mengangkat sel kulit mati serta melawan jerawat, serta Vitamin C mencerahkan kusam dan menyamarkan noda hitam. Cocok untuk kulit kusam, berminyak, dan rentan berjerawat. Tanpa parfum, hypoallergenic.', 'Aqua/Water, Butyrospermum Parkii (Shea) Butter, Butylene Glycol, Tridecyl Stearate, Isodecyl Salicylate, PEG-30 Dipolyhydroxystearate, Tridecyl Trimellitate, Persea Gratissima (Avocado) Oil, Isocetyl Stearoyl Stearate, Propylene Glycol, Dipentaerythrityl Hexacaprylate/Hexacaprate, Sorbitan Sesquioleate, Magnesium Sulfate, Phenoxyethanol, Hydrogenated Castor Oil, Sodium PCA, Ozokerite, Methylparaben, Tocopheryl Acetate, Isopropyl Palmitate, Disodium EDTA, Copper Pca, Butylparaben, Ethylparaben, Propylparaben, Helianthus Annuus (Sunflower) Seed Oil, CI 75130/Beta-Carotene, Tocopherol, Citric Acid', '1. Tuang Micellar Water ke kapas secukupnya\n2. Aplikasikan dan tekan kapas ke seluruh wajah\n3. Tarik kapas dan ulangi di seluruh bagian wajah', 0, 'https://shopee.co.id/Garnier-Micellar-Cleansing-Water-Salicylic-Blue-Skin-Care-125ml-(Pembersih-Wajah-Untuk-Kulit-Berminyak-Rentan-Berjerawat-dengan-Salicylic-Acid)-Make-Up-Remover-i.62583853.1022726808', 'https://www.tokopedia.com/natemolly/garnier-micellar-water-salicylic-bha-blue-anti-acne-125ml?extParam=ivf%3Dfalse&src=topads', 1),
(40, 1, 5, 5, 29, 'Micellar Water Rose Cleanse', '	https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/GAI-MRV-00004.001_2.png', 'Rp37.000 - Rp38.000', 'Micellar Water pertama dari Garnier yang diperkaya dengan air mawar. Dapat membersihkan dan mengangkat make up secara efisien, menjadikan kulit tampak glowing. Langkah Bersih dari makeup, kulit tampak bercahaya. Cocok untuk kulit sensitif.', 'Aqua/Water, Hexylene Glycol, Glycerin, Rosa Damascena Flower Water, PPG-26-Buteth-26, PEG-40 Hydrogenated Castor Oil, Arginine, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium EDTA, Propanediol, Citric Acid, Salicylic Acid, Myrtrimonium Bromide, Linalool, Limonene, Parfum/Fragrance', '1. Tuang pada kapas, kemudian usapkan pada wajah, mata, dan bibir tanpa menggosok dengan keras.\n2. Tidak perlu dibilas.', 0, 'https://shopee.co.id/Garnier-Micellar-Rose-Water-Cleanse-Glow-Skin-Care-125ml-(Make-Up-Remover-Dengan-Air-Mawar)-i.62583853.23231534669', 'https://www.tokopedia.com/mirrorbeauty/garnier-micellar-rose-water-cleanse-glow-skin-care-125ml?extParam=ivf=false&keyword=garnier+micellar+water+rose+cleanse&search_id=202411250408379A41D20D852EC51C3VNV&src=search', 1),
(41, 1, 4, 6, 18, 'MicellAir Pearl Bright', 'https://images.soco.id/c1acd3f3-9ed2-4f0d-82eb-0d7370feecb4-.jpg', 'Rp72.000 - Rp100.000', 'Nivea Pearl Bright MicellAIR merupakan pembersih wajah yang dapat membersihkan make up pada wajah tanpa meninggalkan residu, sehingga kulit bisa bebas bernapas. Memiliki kandungan Licorice extract yang berguna untuk melembabkan dan membantu mencerahkan kulit. Nivea Pearl Bright MicellAIR tidak mengandung bahan aman alkohol sehingga aman untuk semua jenis kulit.', 'Aqua, Phenoxyethanol, Glycerin, PEG-7 Glyceryl Cocoate, Sorbitol, Trisodium EDTA, Decyl Glucoside, Polyquaternium-10, Citric Acid, Hydrolyzed Pearl, Disodium Cocoyl Glutamate, Glyceryl Glucoside, Sodium Chloride, Sodium Acetate, Propylene Glycol, Glycyrrhiza Glabra Root Extract', '1. Tuangkan secukupnya ke kapas.\n2. Bersihkan dan ratakan di wajah Anda. Pastikan segala sisi terbasuh dengan baik. Ulangi bila perlu.', 0, 'https://shopee.co.id/NIVEA-Micellar-Water-MicellAir-Pearl-Bright-400ml-Membersihkan-wajah-mencerahkan-kulit-i.110573301.18085036111?sp_atk=1a43ac08-0f72-400e-98e4-cc2a41e19584&xptdk=1a43ac08-0f72-400e-98e4-cc2a41e19584', 'https://www.tokopedia.com/dwimulya/nivea-micellair-skin-breathe-pearl-bright-micellar-water-400ml?extParam=ivf%3Dfalse&keyword=nivea+micellair+pearl+bright&search_id=202411250411014BED04E32FF6063251FK&src=search', 1),
(42, 3, 1, 5, 4, 'Healthy Radiance Brightness', 'https://images.soco.id/18b2e5ee-fc2a-4621-8dee-1c7a45822007-.jpg', 'Rp174.000 - Rp200.000', 'Cetaphil Bright Healthy Radiance Brightness Refresh Toner adalah toner pencerah yang dapat menghidrasi, melembutkan dan mencerahkan kulit. Cetaphil Bright Healthy Radiance Brightness Refresh Toner membantu menjaga keremajaan kulit dengan mengangkat sel kulit mati, kotoran, dan debu.', 'Aqua, Butylene Glycol, Niacinamide, Glycerin, 1,2-Hexanediol, Anhydroxylitol, Citric Acid, Ethylhexylglycerin, Hydrolyzed Cicer Seed Extract, Pancratium Maritimum Extract, Rhododendron Chrysanthum Leaf Extract, Sodium Citrate, Tocopherol, Tricholoma Matsutake Extract, Trisodium Ethylenediamine Disuccinate, Xylitol, Xylitylglucoside', 'Tuangkan Cetaphil Bright Healthy Radiance Brightness Refresh Toner pada kapas. Lalu, usapkan pada wajah mulai dari area tengah hingga pinggir dengan gerakan ke atas. Diamkan beberapa saat agar toner meresap sempurna. Hindari penggunaan pada area mata. Tidak perlu dibilas.', 0, 'https://shopee.co.id/Cetaphil-Bright-Healthy-Radiance-Brightness-Refresh-Toner-150g-dengan-Glycerin-Niacinamide-dan-White-Sea-Daffodil-Skin-Care-Perawatan-Untuk-Mencerahkan-dan-Melembapkan-Kulit-Wajah-Sensitif-i.11277516.8604616594?sp_atk=aacfeb6d-2465-4447-93c9-201ab7ed7801', 'https://www.tokopedia.com/cetaphil/cetaphil-bright-healthy-radiance-brightness-refresh-toner-150g-skin-care-perawatan-untuk-melembabkan-kulit-wajah?extParam=ivf=true&src=topads', 1),
(43, 3, 5, 1, 17, 'Centella Ceramide Soothing', 'https://images.soco.id/469389ec-4a47-4faa-9501-b8963df0388f-.jpg', 'Rp48.000 - Rp54.000', 'Soothing toner untuk menenangkan dan merawat jerawat ataupun kemerahan di kulit. Tekstur cair, ringan, dan mudah menyerap ke kulit dengan kandungan Centella asiatica yang efektif merawat jerawat dan kemerahan. 2% Ceramide dan Sodium Hyaluronate memberikan kelembaban yang optimal untuk kulit.', 'Aqua, Hydroxyethyl Urea, Methylpropanediol, Glycereth-26, 1,2-Hexanediol, Pentylene Glycol, Polyglycerin-3, Hydroxyacetophenone, Bis-PEG-18 Methyl Ether Dimethyl Silane, Centella Asiatica Leaf Extract, Ceramide NP, Butylene Glycol, Hyaluronic Acid, Allantoin, Maltodextrin, Abronia Villosa Leaf Extract, Silk Amino Acids, Gentiana Scabra Root Extract, Sodium Hyaluronate, Menthol, Castanea Sativa (Chestnut) Seed Extract, Helianthus Annuus (Sunflower) Seed Extract, Menthyl Lactate, PEG-35 Castor Oil, Glycine Soja (Soybean) Seed Extract, Secale Cereale (Rye) Seed Extract, Pyrus Cydonia Seed Extract, Hibiscus Abelmoschus Seed Extract, Panicum Miliaceum (Millet) Seed Extract, Glycerin, PEG-40 Hydrogenated Castor Oil, Glyceryl Polymethacrylate, PPG-26-Buteth-26, Xanthan Gum, Disodium EDTA, PEG-50 Hydrogenated Castor Oil, Nonoxynol-12, Propylene Glycol, BHT, Ethylhexylglycerin', '1. Tuangkan produk ke telapak tangan atau kapas wajah\n2. Aplikasikan ke seluruh wajah dan leher secara merata\n3. Lakukan pengaplikasian ulang bila diperlukan\n4. Lanjutkan dengan rangkaian skincare berikutnya', 0, 'https://shopee.co.id/Glad2Glow-Centella-Ceramide-Soothing-Acne-Cica-Toner-Wajah-40ml-80ml-Obat-Jerawat-Calms-Acnes-Bumps-Reduces-Redness-Irritation-i.809769142.18024029084?sp_atk=756fb8dc-fe9d-4733-8b32-ac0ab0562073', 'https://www.tokopedia.com/glad2glow/big-size-80ml-glad2glow-2-centella-ceramide-super-soothing-toner-80ml-face-toner-toner-wajah-centella-toner-acne-toner-jerawat?extParam=ivf=false&src=topads', 1),
(44, 3, 5, 5, 30, 'Essence Toner', 'https://s3-ap-southeast-1.amazonaws.com/img-sociolla/img/p/2/5/6/6/2/25662-large_default.jpg', 'Rp36.000 - Rp80.000', 'Essence Toner ini untuk meningkatkan kualitas produk, kandungan/extract gingseng pada Pyunkang Yul Essence Toner diperbanyak sehingga bau kekayuannya lebih kuat dari formula sebelumnya', 'Astragalus Membranaceus Root Extract, 1,2-Hexanediol, Butylene Glycol, Bis-PEG-18 Methyl Ether Dimethyl Silane, Hydroxyethylcellulose, Carbomer, Arginine', '1. Tuang secukupnya pada telapak tangan atau kapas dan aplikasikan secara merata ke permukaan kulit\n2. Tepuk-tepuk dengan lembut untuk membantu penyerapan produk ke dalam kulit', 0, 'https://shopee.co.id/Beautybarme-Pyunkang-Yul-Essence-Toner-100Ml-200-Ml-Mini-Bottle-Flip-Top-Bpom-i.28781862.6839675906?sp_atk=3161294d-3703-440b-b3a1-dc5f0e9602f6&xptdk=3161294d-3703-440b-b3a1-dc5f0e9602f6', 'https://www.tokopedia.com/beautyisyourss/pyunkang-yul-essence-toner-pelembab-wajah-skincare-30ml-100ml-200ml-ess-toner-30ml?extParam=ivf=true&src=topads', 1),
(45, 3, 5, 1, 31, 'Cica-B5 Soothing Essence Toner - 80 ml', 'https://images.soco.id/99f64060-e180-4237-ae5a-231cca7f7ae3-.jpg', 'Rp34.000 - Rp38.000', 'Toner dengan kandungan Centella Asiatica dan Panthenol yang berfungsi untuk membantu kulit terasa segar, lembut, dan lembap. Toner ini boleh dikombinasikan dengan seluruh produk The Originote.', 'Water, butylene glycol, glycerin, 1,2-hexanediol, hydroxyacetophenone, panthenol, diglycerin, paeonia suffruticosa root bark extract, glycyrrhiza uralensis (licorice) root extract, portulaca oleracea flower/leaf/stem extract, paeonia lactiflora extract, allantoin, adenosine, tremella fuciformis polysaccharide, propylene glycol, PEG-40 hydrogenated castor oil, sodium hyaluronate, maltodextrin, phenoxyethanol, centella asiatica extract, caprylic/capric triglyceride, madecassoside, hydrogenated lecithin, ethylhexylglycerin, hexylene glycol, stearic acid, cholesterol, ceramide NP, asiaticoside, ceramide EOP, ceramide AS, ceramide AP, ceramide NG, bisabolol, caramel, zingiber officinale (ginger) root extract, CI 19140, CI 42090', 'Setelah mencuci muka, tuangkan Cica-B5 Soothing Essence Toner ke kapas atau telapak tangan secukupnya. Aplikasikan pada wajah dan leher secara merata hingga menyerap sebelum menggunakan produk skincare selanjutnya.', 0, 'https://shopee.co.id/The-Originote-Cica-B5-Soothing-Essence-Toner-80ml-i.30736001.29352033102?sp_atk=2cba7b6f-ad4c-4b6e-b6fa-569ff4d8ae69&xptdk=2cba7b6f-ad4c-4b6e-b6fa-569ff4d8ae69', 'https://www.tokopedia.com/areacantikid/the-originote-cica-b5-soothing-essence-toner-80-ml?extParam=ivf=false&keyword=the+originote+cica-b5+soothing+essence+toner+80ml&search_id=202411250434179A41D20D852EC538APG8&src=search', 1),
(46, 3, 4, 6, 32, 'All-in-One Power Toning Face', 'https://nihonmart.id/pub/media/catalog/product/cache/8a3fa81d90974d9a7299f2eff309979f/p/o/power_toning_face_spray_100ml-min.png', 'Rp75.000 - Rp80.000', 'Kahf All-in-One Power Toning Face adalah produk perawatan wajah multifungsi yang dirancang khusus untuk kebutuhan pria. Menggabungkan fungsi toner, essence, dan moisturizer dalam satu langkah, produk ini efektif membantu menyegarkan, melembapkan, dan menenangkan kulit. Diformulasikan dengan bahan-bahan alami dan teknologi modern, produk ini memberikan perawatan optimal bagi kulit pria yang aktif, bahkan setelah aktivitas berat seperti olahraga atau terpapar polusi.', 'Aqua, Propanediol, Sodium Chloride, 1,2-Hexanediol, Panthenol, Zinc PCA, Phenoxyethanol, Butylene Glycol, Saccharide Isomerate, Gellan Gum, Disodium EDTA, Chlorphenesin, Allantoin, Ethanol, Potassium Hydroxide, Centella Asiatica Extract, Phospholipids, PEG-40 Hydrogenated Castor Oil, Polygonum Cuspidatum Root Extract, Scutellaria Baicalensis Root Extract, Menthyl Lactate, PPG-26-Buteth-26, Trideceth-9, Camellia Sinensis Leaf Extract, Fragrance, Glycyrrhiza Glabra (Licorice) Root Extract, Maltodextrin, Glycerin, Chamomilla Recutita (Matricaria) Flower Extract, Citric Acid, Rosmarinus Officinalis (Rosemary) Leaf Extract, Sodium Citrate, Haematococcus Pluvialis Extract, Polysorbate 20.', '1. Semprotkan secara langsung dari jarak 10–15 cm pada wajah dan leher yang telah dibersihkan.\n2. Gerakkan tangan untuk menyemprotkan face spray ke seluruh wajah dan leher. Biarkan kering hanya dalam hitungan detik.', 0, 'https://shopee.co.id/Kahf-All-in-One-Power-Toning-Face-Spray-100-ml-Toner-Wajah-Pria-i.326487418.18573006174?sp_atk=4e6a4637-a7a2-4000-ad5a-6361f21add8f&xptdk=4e6a4637-a7a2-4000-ad5a-6361f21add8f', 'https://www.tokopedia.com/bandungceria/kafh-face-spray-all-in-one-power-toning-100ml?extParam=ivf=false&keyword=kafh+all-in-one+power+toning+face&search_id=2024112504403945F63534CB426C39853V&src=search', 1),
(47, 3, 4, 4, 6, 'Glow Maker AHA BHA PHA', 'https://images.somethinc.com/uploads/products/thumbs/800x800/Somethinc_GlowMaker_Duo_PackShot_800x9801.jpg', 'Rp74.000 - Rp100.000', 'Somethinc Glow Maker AHA BHA PHA Daily Clarifying Treatment Toner adalah toner exfoliating yang cocok untuk kulit pemula atau kulit sensitif yang berfungsi meratakan tekstur kulit wajah, menyamarkan pori-pori wajah, serta memberikan kelembaban pada kulit.', 'Water, butylene glycol, Glycolic Acid, Arginine, 1,2-hexanediol, Betaine, Allantoin, Lactobionic Acid, Anthemis Nobilis Flower Extract, Salicylic Acid, Caffeine', 'Gunakan toner essence pada kulit wajah yang sudah dibersihkan. Tuangkan 2-3 tetes produk pada telapak tangan, ratakan ke seluruh wajah dan leher hingga menyerap', 0, 'https://shopee.co.id/SOMETHINC-Glow-Maker-AHA-BHA-PHA-Clarifying-Treatment-Toner-i.68111.3017221469', 'https://www.tokopedia.com/msbb/msbb-somethinc-glow-maker-aha-bha-pha-clarifying-treatment-toner-40m?extParam=ivf=false&keyword=somethinc+glow+maker+aha+bha+pha&search_id=20241125043506BD6514B695B2820A2IJK&src=search', 1),
(48, 3, 4, 1, 2, 'Pure Centella Acne Calming', 'https://images.soco.id/01e20018-1c13-4ace-b666-ae0051a769cd-.jpg', 'Rp108.000 - Rp129.000', 'Skintific diformulasikan dengan “Royal DSM Niacinamide” yang bekerja secara berbeda dibandingkan Niacinamide lainnya. Royal DSM Niacinamide dapat ditemukan pada merek terkenal seperti SK-II. Royal DSM Niacinamide adalah Niacinamide versi tradisional yang lebih murni dan memiliki molekul lebih kecil. Bekerja lebih cepat, Royal DSM Niacinamide mampu menyerap ke dalam kulit dalam waktu 30 detik dan mampu mencerahkan kulit dalam 7 hari sekaligus melindungi skin barrier. Alpha Arbutin juga ditambahkan untuk meningkatkan khasiat Royal DSM Niacinamide, membuat serum ini bekerja lebih cepat dan menembus lapisan kulit terdalam. Masih mampu melindungi skin barrier dengan Ceramides dan Hyaluronic Acid, serum ini akan menjaga kelembapan kulit dengan baik. Aman untuk semua jenis kulit, karena juga terdapat Centella Asiatica yang dapat membantu menenangkan dan menenangkan kulit.', 'AQUA, NIACINAMIDE, BUTYLENE GLYCOL, PROPYLENE GLYCOL, PEG/PPG-14/7 DIMETHYL ETHER, EKSTRAK CENTELLA ASIATICA, EKSTRAK AKAR GENTIANA SCABRA, EKSTRAK KERNEL AVENA SATIVA (OAT), EKSTRAK RAGI, EKSTRAK BUNGA CROCUS SATIVUS, ALPHA-ARBUTIN, CERAMIDE NP, AVENA SATIVA (OAT) KERNEL OIL, SPHINGOLIPIDS, CERAMIDE AS, CERAMIDE AP, CERAMIDE NS/CERAMIDE NG, 1,2-HEXANEDIOL, BIS-PEG-18 METHYL ETHER DIMETHYL SILANE, SODIUM POLYACRYLOYLDIMETHYL TAURATE, ALLANTOIN, HYDROGENATED LECITHIN, ACRYLATES /C10-30 ALKYL ACRYLATE CROSSPOLYMER, PENTYLENE GLYCOL, ISOHEXADECANE, ASAM TRANEXAMIC, FRUTOSE, AMINOMETHYL PROPANOL, PROPANEDIOL, SODIUM HYALURONATE, DISODIUM EDTA, PEG-7 GLYCERYL COCOATE, PHOSPHATIDYLCHOLINE, PHYTOSTEROLS, SODIUM STEAROYL GLUTAMATE, HYDROXYACETOPHENONE, WANGI, ASAM CAPRYLHYDROXAMIC, ASAM AMINO KEDELAI, FENOXYETHANOL, CHLORPHENESIN, ETHYLHEXYLGLYCERIN', '1. Sebelum menggunakan pelembab, teteskan beberapa tetes pada wajah dan leher yang bersih.\n2. Untuk hasil terbaik, silakan gunakan pada pagi dan sore hari.\n3. Di pagi hari, oleskan tabir surya.', 0, 'https://shopee.co.id/SKINTIFIC-Pure-Centella-Acne-Calming-Toner-80ml-Toner-Menjaga-skin-barrier-meredakan-kemerahan-Hydrating-Toner-Wajah-Acner-Glowing-Barrie-Anti-Aging-Brightening-Whitening-Barrier-Brightenin-with-Organic-Centella-Ectoin-Ceramide-Anti-Acne-Sensitive-Skin-i.380266264.19378732280', 'https://www.tokopedia.com/yrandom/skintific-pure-centella-acne-calming-toner-80ml?extParam=ivf=false&src=topads', 1),
(49, 4, 2, 6, 14, 'All Rounder', 'https://images.soco.id/6236cd70-0dc4-4c39-bb80-a94c8a7350c4-image-0-1616399986454', 'Rp110.000 - Rp130.000', 'Hale All Rounder Gel adalah gel multifungsi yang cocok untuk berbagai kebutuhan kulit. Dengan tekstur ringan dan mudah meresap, gel ini dapat digunakan sebagai pelembap, soothing gel, atau perawatan kulit harian. Formulanya dirancang untuk memberikan hidrasi intens, menenangkan kulit yang teriritasi, dan membantu menjaga keseimbangan kulit.', 'Water, Glycerin, Niacinamide, Propanediol, 1,2-Hexanediol, Pentylene Glycol, Cyclopentasiloxane, Glyceryl Acrylate/Acrylic Acid Copolymer, Cyclohexasiloxane, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Tromethamine, Adenosine, Allantoin, Ethylhexylglycerin, Sodium Phytate, Ubiquinone, Tocopheryl Acetate, Tocopherol, Centella Asiatica Extract, Resveratrol, Butylene Glycol, Dextrin, Theobroma Cacao (Cocoa) Seed Extract, Glycyrrhiza Glabra (Licorice) Root Extract, Camellia Sinensis Leaf Extract, Punica Granatum Fruit Extract, Mentha Rotundifolia Leaf Extract, Thymus Vulgaris (Thyme) Leaf Extract', '1. Ambil produk secukupnya dan aplikasikan pada area yang membutuhkan.\n2. Gunakan pada wajah sebagai pelembap atau soothing gel.\n3. Untuk tubuh, aplikasikan pada area yang kering atau iritasi.\n4. Bisa digunakan pagi dan malam atau sesuai kebutuhan.', 0, 'https://shopee.co.id/HALE-ALL-ROUNDER-GEL-CREAM-MOISTURIZER-40GR-i.50972887.23703327735?sp_atk=7b25f020-b54c-438a-9fe6-35206f05fdd9&xptdk=7b25f020-b54c-438a-9fe6-35206f05fdd9', 'https://www.tokopedia.com/nihonmart/hale-all-rounder-gel-cream-moisturizer-40g?extParam=ivf=false&keyword=hale+all+rounder&search_id=2024112504363324DB532D7A91E5368LFM&src=search', 1),
(50, 4, 4, 2, 17, 'Peach Retinol Moisturizer', 'https://images.soco.id/752516d7-e49a-4735-9f3e-93f086ebbad9-image-0-1722482316697', 'Rp48.000 - Rp54.000', 'Moisturizer dengan kandungan campuran Retinol & HPR yang bekerja secara bersinergi untuk membantu melawan tanda-tanda penuaan dini, merawat jerawat, melembutkan tekstur kulit yang tidak merata, membantu wajah lebih cerah, dan menyamarkan noda hitam pada kulit. Dilengkapi juga dengan kandungan Niacinamide yang membantu melembabkan serta meratakan warna kulit.', 'Aqua, Dimethicone, Hydroxyethyl Urea, Glycerin, Isododecane, Niacinamide, Glycereth-26, Trehalose, Butylene Glycol, Allantoin, Phenoxyethanol, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Tromethamine, Polyglyceryl-6 Distearate, Hydrogenated Lecithin, Retinol, Dimethiconol, Methylparaben', '1. Gunakan produk sebanyak 2-3 kali selama seminggu pada malam hari\n2. Jangan digabungkan dengan menggunakan produk eksfoliasi yang mengandung (AHA, BHA, PHA) lainnya ketika menggunakan produk ini\n3. Ambil formula secukupnya, lalu aplikasikan pada wajah dan ratakan ke seluruh bagian wajah', 0, 'https://shopee.co.id/Glad2Glow-Peach-Retinol-Moisturizer-30Gr-i.186214521.27508978215', 'https://www.tokopedia.com/guardian-officia/glad2glow-peach-retinol-moisturizer-30gr?extParam=ivf=false&keyword=glad2glow+peach+retinol+moisturizer&search_id=20241125044433D6B5CDE83B048E1D2A5O&src=search', 1),
(51, 2, 4, 1, 17, 'Kiwi 3D Acid Acne Moisturizer', 'https://images.soco.id/203789e2-6e40-4697-9cc4-1b585227cead-image-0-1722482242060', 'Rp48.000 - Rp54.000', 'Moisturizer untuk permasalahan kulit berjerawat yang di formulasikan secara Pro-potent ingredients dengan melakukan penggabungan 3 Acid (Salicylic Acid, Succinic Acid, Mandelic Acid) dalam satu produk yang fokus untuk meredakan, mematangkan dan mengeringkan jerawat tanpa mengiritasi dan tidak membuat kulit menjadi kering. Dengan menjaga ketahanan kelembapan dan hidrasi pada kulit.', 'Aqua/Water, Butyrospermum Parkii (Shea) Butter, Butylene Glycol, Tridecyl Stearate, Isodecyl Salicylate, PEG-30 Dipolyhydroxystearate, Tridecyl Trimellitate, Persea Gratissima (Avocado) Oil, Isocetyl Stearoyl Stearate, Propylene Glycol, Dipentaerythrityl Hexacaprylate/Hexacaprate, Sorbitan Sesquioleate, Magnesium Sulfate, Phenoxyethanol, Hydrogenated Castor Oil, Sodium PCA, Ozokerite, Methylparaben, Tocopheryl Acetate, Isopropyl Palmitate, Disodium EDTA, Copper Pca, Butylparaben, Ethylparaben, Propylparaben, Helianthus Annuus (Sunflower) Seed Oil, CI 75130/Beta-Carotene, Tocopherol, Citric Acid', '1. Dapat digunakan setiap hari pagi dan malam\n2. Jangan digabungkan dengan produk Retinol & Exfoliasi (AHA BHA PHA)\n3. Ambil produk secukupnya, lalu aplikasikan kepada kulit wajah hingga merata sempurna', 0, 'https://shopee.co.id/%E3%80%90NEW-LAUNCH%E3%80%91GLAD2GLOW-KIWI-3D-ACID-ACNE-MOISTURIZER-Pelembab-Wajah-Jerawat-Day-Night-Cream-Skincare-i.809769142.26704788256?sp_atk=fa1a5cfb-86a0-47c4-ab70-df4e87def055&xptdk=fa1a5cfb-86a0-47c4-ab70-df4e87def055', 'https://www.tokopedia.com/glad2glow/glad2glow-kiwi-3d-acid-acne-moisturizer-30g-krim-wajah-moisturizer-acne-g2g-pelembab-wajah-jerawat?extParam=ivf=false&src=topads', 1),
(52, 2, 4, 8, 3, 'Bright Stuff Tone Up Cream', 'https://images.soco.id/315ddc03-bdc0-401f-8007-235755890b94-.jpg', 'Rp20.000 - Rp27.000', 'EMINA Bright Stuff Tone Up Cream, mampu membantu menyamarkan noda hitam bekas jerawat serta membuat kulit tampak lebih cerah & halus secara instant. Dengan kandungan SuperOxy, kulit tampak lebih cerah tanpa kemerahan.', 'Aqua, Titanium Dioxide, Ethylhexyl Methoxycinnamate, Niacinamide, Polymethyl Methacrylate, Propylene Glycol, Dimethicone, Stearic Acid, Glyceryl Stearate, Phenoxyethanol, 4-Methylbenzylidene Camphor, Polyacrylamide, Cethyl Alcohol, Cyclopentasiloxane, Polymethylsilsesquioxane, PEG-100 Stearate, C13-14 Isoparaffin, Butyl Methoxydibenzoylmethane, Allantoin, Panthenol, Tocopheryl Acetate, Laureth 7, Disodium EDTA, Ethylhexylglycerin, Butylene Glycol, Triethoxycaprylylsilane, Aluminium Hydroxide, Dimethicone/Vinyl Dimethicone Crosspolymer, Fragrance, Actinidia Polygama Fruit Extract, Arbutin, Citric Acid, Sodium Sulfite, Acetyl Tyrosine, Saxifraga Sarmentosa Extract, Paeonia Suffruticosa Root Extract, Aminopropyl Ascorbyl Phosphate, Scutellaria Baicalensis Root Extract, Glutathione, PEG-40 Castor Oil, Butylene Glycol, Triethanolamine, Hexylene Glicol, Ammonium Acrylates Copolymer, CI 12490', 'Tuang produk secukupnya pada telapak tangan, usap dan ratakan pada wajah dan leher, biarkan hingga meresap. Gunakan di pagi hari.', 0, 'https://shopee.co.id/Emina-Bright-Stuff-Tone-Up-Face-Cream-i.940220394.22634468575?sp_atk=50f74903-52d0-4592-80d0-5f9fc76b1ad4&xptdk=50f74903-52d0-4592-80d0-5f9fc76b1ad4', 'https://www.tokopedia.com/emina-official/emina-bright-stuff-tone-up-cream-20-ml-pelembab-wajah-cerah-instan?extParam=cmp%3D1&ivf=false&keyword=emina+bright+stuff+tone+up+cream&search_id=2024112506362374C531566B6931396SZM&src=search', 1),
(53, 2, 1, 5, 4, 'Moisturizing Lotion', 'https://images.soco.id/8b0d78ee-c837-483f-9fff-9dde353e7309-.jpg', 'Rp160.000 - Rp190.000', 'Cetaphil Face & Body Moisturizing Lotion 200ml adalah lotion pelembap dengan kombinasi formula yang unik dari Avocado Oil ini dapat membantu melembapkan kulit.', 'Aqua, Glycerin, Isopropyl Palmitate, Cetearyl Alcohol, Ceteareth-20, Panthenol, Niacinamide, Tocopheryl Acetate, Dimethicone, Persea Gratissima Oil, Helianthus Annuus Seed Oil, Pantolactone, Glyceryl Stearate, Sodium Benzoate, Benzyl Alcohol, Citric Acid.', 'Usapkan Cetaphil Moisturizing Lotion ke kulit yang kering secara teratur sesuai kebutuhan atau anjuran.', 0, 'https://shopee.co.id/Cetaphil-Moisturizing-Lotion-200-Ml-Botol-i.935939011.25264900812?sp_atk=b2baf389-9b32-4c55-85d9-7703ae412422&xptdk=b2baf389-9b32-4c55-85d9-7703ae412422', 'https://www.tokopedia.com/century-online/cetaphil-face-body-moisturizing-lotion-200ml-perawatan-tubuh?extParam=ivf=false&keyword=cetaphil+moisturizing+lotion&search_id=2024112506404013AF71970A824A23DFN2&src=search&whid=10998247', 1),
(54, 2, 1, 4, 28, 'Barrier Up Moisturizer', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/ELVICTO_Barrier_Up_Moisturizer.png', 'Rp77.000 - Rp100.000', 'Elvicto Barrier Up Moisturizer adalah pelembab wajah dengan formula water based yang ringan dan mudah meresap. Memiliki kandungan Ceremide dan Hyaluronic Acid yang dapat merawat dan memperkuat skin barrier serta menjaga kelembaban kulit. Dikemas dengan Collagen dan Tocopherol yang baik untuk menjaga elastisitas kulit dan menutrisi kulit. Diperkaya dengan Centella Asiatica dan Soybean yang mampu mengatasi iritasi pada kulit.', 'Aqua, propylene glycol, niacinamide, diglycerin, dimethicone, dicaprylyl carbonate, dimethyl isosorbide, Tranexamic acid, propylheptyl caprylate, butylene Glycol, glyserine, alcohol, arbutin, citric acid, sodium sulfite, acetyl tyrosine, saxifraga sarmentosa extract, paeonia suffruticosa root extract, aminopropyl ascorbyl phosphate, scutellaria baicalensis root extract, glutathione, aminomethyl phosphinic acid, sodium methyl Paraben, Carica Papaya fruit extract, Tetradecyl aminobutyroylvalylaminobutyric urea trifluoroacetate, magnesium chloride, ceramide NP, peg-7 glyseryl Cocoate, phenoxyethanol, ammonium acryloyldimethyl/vp Copolymer, ethylhexylglycerin, tocopheryl acetate, sorbitan sesquiisostearate, parfum, xanthan gum, Asiaticoside, Asiatica acid, madecassic acid, imidazolidinyl urea, disodium edta, titanium dioxide, sodium Metabisulfite', 'Oleskan ELVICTO Bright Up Moisturizer pada siang dan malam secara tipis dan merata pada wajah yang sudah dibersihkan.', 0, 'https://shopee.co.id/ELVICTO-BARRIER-UP-MOISTURIZER-Pelembap-Wajah-Pria-Perawatan-untuk-skin-Barrier-Mengandung-Ceramide-Hyaluronic-Acid-i.168074809.19863177615?sp_atk=82efbf67-a88f-41ab-a77f-f545f5066ee0&xptdk=82efbf67-a88f-41ab-a77f-f545f5066ee0', 'https://www.tokopedia.com/tlfofficialstore/elvicto-bright-barrier-up-moisturizer-brightening-cream-krim-wajah-pria-bright-up-ef9ac?extParam=ivf=false&keyword=elvicto+barrier+up+moisturizer&search_id=2024112506453258BCD33917BE67169LVQ&src=search', 1),
(55, 2, 1, 5, 33, 'G-Alpine Hydralock Moisturizer', 'https://medias.watsons.co.id/publishing/WTCID-15956-front-zoom.jpg?version=1728558783', 'Rp183.000 - Rp220.000', 'Pelembab yang cepat menyerap dengan Asam Hyaluronic untuk hidrasi yang tahan lama dan kemampuan luar biasa untuk meminimalkan munculnya kerutan. Mengandung ekstrak gigawhite, ekstrak ajaib yang berasal dari campuran 7 perkebunan dari Gunung Alpine untuk mencerahkan kulit, merangsang produksi kolagen dan menjaga kulit tetap montok dan bersemangat. Centella Asiatica bahan yang kuat untuk meningkatkan fungsi penghalang kulit. Niacinamide, Minyak Argan, Minyak Gandum, Minyak Almond Manis, Minyak Alpukat, Sumber hebat Asam Alfa lipoat yang dikenal sebagai antioksidan kuat untuk meremajakan kulit dan menjaga hidrasi tetap terkunci di dalam. Memanjakan kulit yang tampak sehat!', 'Water, Cyclomethicone, Niacinamide, Glycerin, Butylene Glycol, Phenoxyethanol, C10-30 Acrylate Copolymer, Triethanolamine, Brassica Oleracea Italica (Broccoli) Sprout Extract, Brassica Campestris (Rapseed) Sprout Extract, Brassica Oleracea Gemmifera (Brussels Sprout) Extract, Helianthus Annuus', 'Oleskan dengan murah hati ke wajah dan leher. Gunakan kapan saja untuk mengurangi iritasi dan menenangkan kulit Anda yang bermasalah', 0, 'https://shopee.co.id/BHUMI-G-Alpine-Hydra-Lock-Moisturizer-(45gr)-i.37421755.2751087442?sp_atk=6e68ec8b-e55e-4533-bce6-ddf3898ade5c&xptdk=6e68ec8b-e55e-4533-bce6-ddf3898ade5c', 'https://www.tokopedia.com/gishop12/bhumi-g-alpine-hydralock-moisturizer-45gr?extParam=ivf=false&keyword=bhumi+g-alpine+hydralock+moisturizer&search_id=20241125065938398F80F00ED4E921984J&src=search&refined=true', 1),
(56, 4, 4, 2, 2, 'Retinol Skin Renewal Serum', 'https://skintific.com/cdn/shop/files/SKT-180-daily_20ml.png?v=1718776546&width=900', 'Rp129.000 - Rp154.000', 'Didukung oleh Real Retinol untuk melembutkan dan menghaluskan tekstur kulit, dan juga secara nyata memudarkan munculnya noda sekaligus meminimalkan jerawat. Campuran canggih Adenosine, EGT (Ergothioneine) dan Symsitive (Pentylene Glycol, 4-t-Butylcyclohexanol) bekerja untuk memberikan perlindungan antioksidan canggih dan membantu memerangi tanda-tanda penuaan dini, menghasilkan kulit yang montok, bercahaya, dan sehat.', 'Aqua, Butylene Glycol, Glycerin, Diethoxyethyl Succinate, Retinol, Retinal, Dimethicone/Vinyl Dimethicone Crosspolymer, 1,2-Hexanediol, Hydroxypinacolone Retinoate, Niacinamide, Propanediol, Carbomer, Ammonium Acryloyldimethyltaurate/VP Copolymer, Calcium Alginate, Agar, Palmitoyl Pentapeptide', '1. Gunakan hanya di malam hari. Oleskan ke kulit yang bersih dan kering, sebelum pelembab, hindari area mata.\n2. Mulailah dengan mengoleskan dua hingga tiga kali per minggu dan tingkatkan penggunaan saat toleransi meningkat.\n3. Kurangi frekuensi penggunaan jika terjadi sensitivitas.\n4. Selalu gunakan tabir surya di siang hari saat menggunakan produk ini.', 0, 'https://shopee.co.id/Skintific-Retinol-Skin-Renewal-Serum-20Ml-i.186214521.28303240778?sp_atk=42cd69e6-e0e1-4d58-918f-76f274a9b2e4&xptdk=42cd69e6-e0e1-4d58-918f-76f274a9b2e4', 'https://www.tokopedia.com/skintific/skintific-gentle-a-retinol-renewal-serum-20ml-bpom', 1),
(57, 4, 4, 1, 2, 'Lactic Acid Skin Renewal', 'https://images.soco.id/70027e4a-b8af-408f-b417-9b4d11b39a7e-.jpg', 'Rp129.000 - Rp154.000', 'Serum eksfoliasi dengan bahan utama Lactic Acid, Succinic Acid dan Pink Grapefruit Acid, memberikan hasil maksimal namun lembut untuk merawat kulit berjerawat, berminyak dan bertekstur. Menggunakan Tiga Bahan Paten Perancis (Evermat™, Pixalia®, Prodizia™) yang berbahan dasar tumbuhan, bekerja pada permukaan pori-pori, mengecilkan tampilan pori-pori secara signifikan dan menekan sebum berlebih, sehingga kulit tampak lebih halus dan cerah. Triple Action dalam 3 Kali Pemakaian, meredakan jerawat, menghaluskan tekstur kulit dan membuat kulit bercahaya. Diformulasikan untuk semua jenis kulit, terutama kulit berminyak dan berjerawat.', 'Aqua/Water, Butyrospermum Parkii (Shea) Butter, Butylene Glycol, Tridecyl Stearate, Isodecyl Salicylate, PEG-30 Dipolyhydroxystearate, Tridecyl Trimellitate, Persea Gratissima (Avocado) Oil, Isocetyl Stearoyl Stearate, Propylene Glycol, Dipentaerythrityl Hexacaprylate/Hexacaprate, Sorbitan Sesquioleate, Magnesium Sulfate, Phenoxyethanol, Hydrogenated Castor Oil, Sodium PCA, Ozokerite, Methylparaben, Tocopheryl Acetate, Isopropyl Palmitate, Disodium EDTA, Copper Pca, Butylparaben, Ethylparaben, Propylparaben, Helianthus Annuus (Sunflower) Seed Oil, CI 75130/Beta-Carotene, Tocopherol, Citric Acid', '1. Oleskan beberapa tetes pada area wajah dan leher yang bersih sebelum mengaplikasikan pelembab.\n2. Disarankan untuk tidak menggunakan serum dengan bahan aktif lain secara bersamaan.\n3. Gunakan hanya pada malam hari, maksimal 2-3 kali seminggu\n4. Gunakan tabir surya di pagi hari', 0, 'https://shopee.co.id/mall/search?keyword=skintific%20lactic%20acid%20skin%20renewal', 'https://www.tokopedia.com/skintific/skintific-lactic-acid-skin-renewal-exfoliating-serum-20-ml?extParam=ivf=false&src=topads', 1),
(58, 4, 4, 8, 24, 'Lightening Facial Serum', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/WARDAH_-_Lightening_Facial_Serum.jpg', 'Rp55.000 - Rp60.000', 'Wardah Lightening Serum Ampoule mengandung 10X Advanced Niacinamide lebih banyak di setiap tetesnya yang bekerja optimal untuk mencerahkan, menyamarkan bekas jerawat, sekaligus melindungi kulit dari paparan blue light.', 'Aqua, Triethanolamine, Glycolic Acid, Phenoxyethanol, Niacinamide, Trideceth-9, PEG-40 Hydrogenated Castor Oil, Ethylhexylglycerin, Propylene Glycol, Tocopheryl Acetate, Ulva Lactuca Extract, Polysorbate 20, Glycerin, Fragrance, Glycyrrhiza Glabra Root Extract, Potassium Sorbate, Sodium Benzoate.', 'Oleskan lembut pada kulit yang telah dibersihkan, pagi dan malam hari sebelum menggunakan pelembab.', 0, 'https://shopee.co.id/Wardah-Lightening-5-Niacinamide-Serum-Ampoule-Dengan-10X-Advanced-Niacinamide-Bisabolol-dan-0-Alkohol-Mencerahkan-Kulit-Kusam-Bekas-Jerawat-Belang-Tidak-Merata-Mencegah-Hiperpigmentasi-Bright-Glow-White-Semua-Jenis-Kulit-i.59763733.7978730355?sp_atk=297c570c-8fbe-40f2-9417-65421d0a35cb&xptdk=297c570c-8fbe-40f2-9417-65421d0a35cb', 'https://www.tokopedia.com/tkmshop/wardah-lightening-facial-serum-ampoule-30ml-serum-wardah?extParam=ivf=false&keyword=wardah+lightening+facial+serum&search_id=20241124143821398F80F00ED4E9355UGR&src=search', 1),
(59, 4, 4, 4, 6, 'BioSpicule Renewal Serum', 'https://images.somethinc.com/uploads/products/thumbs/800x800/WhatsApp_Image_2024-05-27_at_05.46_.20_9d3b2b57_.jpg', 'Rp55.000 - Rp60.000', 'Microneedle-Like Effect Serum! Serum jarum untuk kulit halus, mulus & awet muda. Natural Microneedle nya teruji efektif menyamarkan bekas jerawat, menghaluskan tekstur & garis halus, serta mengoptimalkan penyerapan skincare ke dalam kulit. Diformulasikan dengan 5x Growth Factor, PDRN, Resveratrol & Hyaluronic+ Blend yang dapat mendukung regenerasi kulit dalam 4 minggu.', 'Water, Glycerin, Glycereth-26, Methylpropanediol, 1,2-Hexanediol, Pentylene Glycol, Glyceryl Glucoside, Hydrolyzed Sponge, Apricot Kernel Oil Polyglyceryl-6 Esters, Ammonium Acryloyldimethyltaurate/VP Copolymer, Polyglyceryl-10 Oleate, Lecithin, Acetyl Glutamine, Butylene Glycol, Sodium Hyaluronate, Sorbitan Palmitate, Hyaluronic Acid, Hydrolyzed Hyaluronic Acid, Honokiol, Magnolol, Ethylhexylglycerin, Xanthan Gum, Garcinia Mangostana Fruit Extract, Cetyl Phosphate, Citric Acid, Caprylyl Glycol, sh-Oligopeptide-1, sh-Polypeptide-1, sh-Polypeptide-9, Bacillus/Soybean/Folic Acid Ferment Extract, sh-Polypeptide-11, sh-Oligopeptide-2, Saccharomyces/Zinc Ferment, Sodium Phytate, Calcium Silicate, Salix Alba (Willow) Bark Extract, Sodium Silicate, Phenoxyethanol, Resveratrol, Tocopherol, Pinus Densiflora Extract, Aureobasidium Pullulans Ferment, Sodium DNA.', '1. Pencet & Teteskan serum pada jari secukupnya\n2. Tap lembut pada area kulit yang ditargetkan (garis halus, kerutan, tekstur, & bekas jerawat)\n3. Diamkan selama 3 menit & lanjutkan dengan skincare lainnya\n4. Gunakan secara rutin pada setiap malam hari.', 0, 'https://shopee.co.id/-NEW-LAUNCH-SOMETHINC-BioSpicule-Renewal-Serum-i.195455930.25228732949?sp_atk=428b0668-cb2b-4a64-8ce5-60ca3dcccd75&xptdk=428b0668-cb2b-4a64-8ce5-60ca3dcccd75', 'https://www.tokopedia.com/somethinc/somethinc-biospicule-renewal-serum-mild-10ml-c222a?extParam=ivf=false&keyword=somethinc+biospicule+renewal+serum&search_id=202411241447388C30E2584BF176265IES&src=search', 1);
INSERT INTO `produk` (`id`, `id_jenis`, `id_tipe_kulit`, `id_masalah`, `id_brand`, `nama_produk`, `gambar`, `kisaran_harga`, `deskripsi`, `komposisi`, `cara_pemakaian`, `rating_produk`, `link_shopee`, `link_tokopedia`, `id_kategori`) VALUES
(60, 4, 2, 3, 31, 'TXA 377 Dark Spot Serum', 'https://images.soco.id/e2d468ad-9601-4747-acec-8338c265db89-.jpg', 'Rp41.000 - Rp46.000', 'The Originote benar-benar memberi solusi skincare murah dengan kualitas mahal. Seperti produk yang baru saja mereka luncurkan, serum TXA 377 Dari Spot Serum. Melengkapi line serum The Originote sebelumnya, serum ini khusus diperuntukkan bagi pemilik flek di wajah.', 'Aqua, glycerin, butylene glycol, tranexamic acid, niacinamide, rosy damascene flower water, cyclopentasiloxane, glycereth-26, hydroxyacetophenone, 1,2-hexanediol, pegippg-17/6 copolymer, ammonium acryloyldimethyltaurate/vp copolymer, methylpropanediol, dimethicone, phenylethyl resorcinol, glycyrrhiza uralensis root extract, allantoin, tremella fuciformis polysaccharide, portulaca oleracea flower/leaf/stem extract, paeonia suffruticosa root extract, paeonia lactiflora extract, glyceryl, Gucoside, polysorbate 80, propylene glycol, bht, sorbitan oleate, osmanthus fragrans flower extract, stephania tetranda extract, beta-glucan, caprylic/capric triglyceride, phenoxyethanol, phospholipids, hydrogenated lecithin, ethylhexylglycerin, hexylene glycol, stearic acid, cholesterol, daucus carota sativa extract, ceramide np, glutathione, panax ginseng root extract, tocopheryl acetate', 'Setelah menggunakan toner, aplikasikan 2-3 tetes serum secara merata pada wajah dan tepuk-tepuk perlahan hingga meresap sebelum menggunakan produk skincare lainnya.', 0, 'https://shopee.co.id/The-Originote-TXA-377-Dark-Spot-Serum-20Ml-i.186214521.24536162379?sp_atk=55519d53-9821-4160-bb9f-e26585728817&xptdk=55519d53-9821-4160-bb9f-e26585728817', 'https://www.tokopedia.com/guardian-officia/the-originote-txa-377-dark-spot-serum-20ml?extParam=ivf=false&keyword=the+originote+txa+377+dark+spot+serum&search_id=202411241449127D06EAD75F130B1263LA&src=search', 1),
(61, 4, 3, 2, 34, 'Miracle Brightening Face Serum', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/NATUR_Face_Serum_Brightening2.jpg', 'Rp170.000 - Rp180.000', 'Natur Miracle Brightening Face Serum adalah serum wajah yang diformulasikan untuk mencerahkan kulit, menyamarkan noda hitam, dan meratakan warna kulit. Produk ini menggunakan bahan-bahan alami yang telah teruji membantu kulit tampak sehat, cerah, dan bercahaya. Dengan tekstur ringan dan mudah meresap, serum ini cocok untuk perawatan harian.', 'Niacinamide, Vitamin C, Rice Extract, Aloe Vera Extract, Licorice Root Extract, Hyaluronic Acid, Panthenol (Pro-Vitamin B5), Allantoin, Tocopherol (Vitamin E), Green Tea Extract, Chamomile Extract, Arbutin, Alpha-Bisabolol, Betaine, Glycerin', '1. Bersihkan wajah dengan pembersih yang sesuai.\n2. Teteskan 2-3 tetes serum ke telapak tangan atau langsung ke wajah.\n3. Aplikasikan secara merata ke wajah dan leher sambil ditepuk-tepuk lembut hingga meresap.\n4. Gunakan setiap pagi dan malam sebelum pelembap.\n5. Pada pagi hari, lanjutkan dengan sunscreen untuk perlindungan optimal.', 0, 'https://shopee.co.id/Natur-Miracle-Calming-Face-Serum-Cica-Witch-Hazel-Serum-Wajah-Berjerawat-i.38631574.3833420527?sp_atk=68256e8d-c027-42f3-a29c-e3122963a735&xptdk=68256e8d-c027-42f3-a29c-e3122963a735', 'https://www.tokopedia.com/y3nnystore/natur-face-serum-miracle-brightening-vitamin-c-and-sour-lime?extParam=ivf=false&keyword=natur+miracle+brightening+face+serum&search_id=20241125074815FA899DCA0C7AF11ADLT8&src=search', 1),
(62, 4, 4, 1, 13, 'AcnePlus Fine Pore Oil Control', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/YOU_BEAUTY_AcnePlus_Fine_Pore_Oil_Control_Serum_%281%29.jpg', 'Rp65.000 - Rp76.000', 'YOU AcnePlus Fine Pore Oil Control adalah serum wajah yang diformulasikan khusus untuk kulit berminyak dan berjerawat. Dengan teknologi mutakhir dan bahan aktif yang efektif, serum ini membantu mengontrol produksi minyak berlebih, merawat pori-pori, dan mengatasi jerawat. Teksturnya ringan, cepat meresap, dan tidak meninggalkan rasa lengket, menjadikannya cocok untuk penggunaan sehari-hari.', 'Salicylic Acid, Niacinamide, Zinc PCA, Centella Asiatica Extract, Tea Tree Oil, Green Tea Extract, Witch Hazel Extract, Aloe Vera Extract, Beta-Glucan, Allantoin, Panthenol (Pro-Vitamin B5), Glycerin, Propanediol', '1. Bersihkan wajah terlebih dahulu.\n2. Ambil 2-3 tetes serum, aplikasikan secara merata ke wajah, terutama di area yang berminyak atau berjerawat.\n3. Pijat lembut hingga serum meresap sempurna.\n4. Gunakan setiap pagi dan malam sebelum pelembap.\n5. Pada pagi hari, lanjutkan dengan sunscreen untuk perlindungan ekstra.', 0, 'https://shopee.co.id/YOU-AcnePlus-Fine-Pore-Oil-Control-Serum-Serum-Anti-Jerawat-Kulit-Berminyak-Bebas-Jerawat-i.72375863.6393092312', 'https://www.tokopedia.com/shopbyle24/y-o.u-acneplus-fine-pore-oil-control-serum-20ml-serum-skin-barrier-acne?extParam=ivf=false&keyword=y.o.u+acneplus+fine+pore+oil+control...&search_id=2024112507505924DB532D7A91E5031XEQ&src=search', 1),
(63, 5, 2, 1, 35, 'AcnCica Beat The Sun Spray', 'https://images.soco.id/9af511e3-e3a5-428b-a975-385fb51de1a5-image-0-1726649692952', 'Rp62.000 - Rp80.000', 'NPURE Cica Beat The Sun Spray adalah sunscreen spray yang dirancang untuk melindungi kulit dari sinar UVA dan UVB dengan SPF 50+ dan PA++++. Produk ini diformulasikan tanpa alkohol dan dilengkapi dengan 5X UV Protection, ekstrak Centella Asiatica organik, serta Ceramide yang membantu melembapkan, menjaga skin barrier, dan merawat kulit berjerawat. Sunscreen ini cocok untuk semua jenis kulit, termasuk kulit sensitif dan berjerawat, serta dapat digunakan sebelum atau sesudah makeup.', 'Centella Asiatica Extract, Salicylic Acid, Niacinamide, Tea Tree Oil, Witch Hazel Extract, Green Tea Extract, Hyaluronic Acid, Aloe Vera Extract, Panthenol (Pro-Vitamin B5), Glycerin, Tocopherol (Vitamin E)', '1. Kocok botol sebelum digunakan.\n2. Jaga jarak 20-25 cm dari wajah, pastikan mata dan mulut tertutup.\n3. Semprotkan secara merata ke wajah atau area tubuh yang akan terpapar sinar matahari.\n4. Tunggu beberapa menit hingga kering.', 0, 'https://shopee.co.id/%E3%80%90NEW-LAUNCH%E3%80%91NPURE-CICA-BEAT-THE-SUN-SPRAY-HEALTHY-GLOW-SPF-PROTECTION-SPF-50-dan-PA-Sunscreen-Spray-Sunscreen-Organic-Centella-Extract-Sunscreen-Kulit-jerawat-dan-beruntusan-Sunscreen-kulit-normal-i.115276607.28660060813', 'https://www.tokopedia.com/npure/npure-cica-beat-the-sun-sunscreen-spray?extParam=whid=3086135', 1),
(64, 5, 5, 5, 4, 'UVA/UVB Defense Spf50++', 'https://www.soco.id/cdn-cgi/image/w=360,format=auto,quality=100,dpr=1.5/https://images.soco.id/c7b9abbe-7bfc-49c2-a8ba-437f09e9458b-.jpg', 'Rp240.000 - Rp265.000', 'Cetaphil UVA/UVB Defense SPF 50+ adalah tabir surya yang dirancang untuk memberikan perlindungan tinggi terhadap sinar UVA dan UVB, membantu melindungi kulit dari kerusakan akibat sinar matahari. Produk ini diformulasikan dengan bahan-bahan yang lembut, sehingga cocok untuk semua jenis kulit, termasuk kulit sensitif. Dengan tekstur ringan dan tidak lengket, sunscreen ini nyaman untuk digunakan sehari-hari.', 'Octinoxate 7.5%, Octisalate 5%, Octocrylene 7%, Oxybenzone 6%, Titanium Dioxide 5.7% Water, Propylene Glycol, Glycerin, Dimethicone, VP/Eicosene Copolymer, Cyclohexasiloxane, Stearic Acid, Potassium cetyl phosphate, Glyceryl Stearate, PEG-100 Stearate, Aluminum hydroxide, Dimethiconol, Disodium EDTA, Tocopherol, Cyclopentasiloxane, Triethanol amine, Phenoxyethanol, Ethylparaben, Chlorphenesin, Cetyl Alcohol, Acrylates/C10-30 alkyl acrylate crosspolymer, Methylparaben, Xanthan Gum', '1. Bersihkan wajah dengan sabun pembersih yang sesuai.\n2. Aplikasikan secara merata ke seluruh wajah dan leher sekitar 15-20 menit sebelum terpapar sinar matahari.\n3. Gunakan kembali setiap 2 jam sekali, terutama setelah berkeringat, berenang, atau mengeringkan wajah dengan handuk.\n4. Sebagai perlindungan tambahan, aplikasikan kembali setelah menggunakan makeup.', 0, 'https://shopee.co.id/Cetaphil-Uva-Uvb-Defense-Spf-50-Krim-50-Gram-Tube-i.1002413739.24336145146?sp_atk=0222914f-5e44-4eb0-a88f-2b673b8e6326&xptdk=0222914f-5e44-4eb0-a88f-2b673b8e6326', 'https://www.tokopedia.com/lottedutyfree/cetaphil-sunscreen-50ml-cetaphil-uva-uvb-defense-sunscreen-spf50-pa-50-ml-791d1?extParam=ivf=false&src=topads', 1),
(65, 5, 3, 2, 36, 'UV Moisture Milk SPF50 PA ++', 'https://res-2.cloudinary.com/dk0z4ums3/image/upload/c_scale,h_500,w_500/v1/production/pharmacy/products/1660633803_5fb3850341ab59059e86995f', 'Rp68.000 - Rp71.000', 'Skin Aqua UV Moisture Milk SPF50+ PA+++ adalah tabir surya yang memberikan perlindungan maksimal terhadap sinar UVA dan UVB, membantu mencegah kulit terbakar dan penuaan dini. Diformulasikan dengan bahan-bahan yang lembut, sunscreen ini cocok untuk kulit sensitif, memberikan hidrasi sekaligus melindungi kulit sepanjang hari. Dengan tekstur yang ringan dan cepat meresap, produk ini tidak meninggalkan rasa lengket dan cocok digunakan di bawah makeup.', 'Water, Cyclopentasiloxane, Titanium Dioxide, Isopropyl Myristate, Dimethicone, Ethylhexyl Methoxycinnamate (Octinoxate), Glycerin, Polymethylsilsesquioxane, Butylene Glycol, Sodium Chloride, Stearic Acid, Dimethiconol, Tocopherol (Vitamin E), Sodium Hyaluronate, PEG-30 Dipolyhydroxystearate, Fragrance', '1. Aplikasikan sunscreen secara merata pada wajah dan leher sekitar 15-20 menit sebelum terpapar sinar matahari.\n2. Gunakan kembali setiap 2 jam sekali, terutama setelah berkeringat, berenang, atau mengeringkan wajah dengan handuk.\n3. Bisa digunakan sebelum makeup sebagai dasar perlindungan kulit.', 0, 'https://shopee.co.id/Skin-Aqua-UV-Sunscreen-Moisture-Gel-SPF-50-PA-40gr-i.78713320.6310202325?sp_atk=4dca1b69-1e11-4abd-85f5-0bb264f55602&xptdk=4dca1b69-1e11-4abd-85f5-0bb264f55602', 'https://www.tokopedia.com/kloui/skin-aqua-uv-moisture-milk-spf50-pa-40-gram?extParam=ivf=false&src=topads', 1),
(66, 5, 5, 3, 37, 'Sensitive Skin Care Biome Protect', 'https://res-1.cloudinary.com/dk0z4ums3/image/upload/c_scale,h_500,w_500/v1/production/pharmacy/products/1729657586_1725421320_labore_sensitive_skin_care_biome_protect_physical_sunscreen_30_ml', 'Rp59.000 - Rp66.000', 'Labore Sensitive Skin Care Biome Protect adalah produk perawatan kulit yang dirancang khusus untuk kulit sensitif. Diformulasikan dengan teknologi Biome Protect, produk ini bertujuan untuk melindungi dan menyeimbangkan mikrobioma kulit, menjaga kelembapan, serta memperkuat lapisan pelindung kulit. Produk ini memberikan perlindungan ekstra terhadap iritasi, kemerahan, dan faktor eksternal yang dapat mempengaruhi kulit sensitif. Dengan kandungan yang lembut dan efektif, Biome Protect cocok digunakan untuk menjaga kesehatan kulit sehari-hari.', 'Water, Glycerin, Panthenol, Niacinamide (Vitamin B3), Propylene Glycol, Sodium Hyaluronate, Beta-Glucan, Allantoin, Chamomilla Recutita (Matricaria) Flower Extract, Tocopherol (Vitamin E), Citric Acid, Phenoxyethanol, Ethylhexylglycerin, Fragrance', '1. Bersihkan wajah dengan pembersih yang sesuai untuk kulit sensitif.\n2. Aplikasikan Labore Sensitive Skin Care Biome Protect pada wajah dan leher secara merata setelah membersihkan wajah, pagi dan malam hari.\n3. Gunakan produk secara rutin untuk hasil yang optimal dalam menjaga keseimbangan dan perlindungan kulit sensitif.', 0, 'https://shopee.co.id/LABORE-Biome-Protect-Physical-Sunscreen-10ml-30ml-i.136011044.24555471283?sp_atk=4fcabb0e-8eb5-472b-a418-aab503c0d591&xptdk=4fcabb0e-8eb5-472b-a418-aab503c0d591', 'https://www.tokopedia.com/virdiara/labore-sensitive-skin-care-gentle-biome-biome-repair-biome-protect-toner-barrier-cream-physical-sunscreen-cleanser-nutrition-gel-bpom-physical-sunscr-labore-4b678?extParam=ivf=false&keyword=labore+sensitive+skin+care+biome+protect&search_id=2024112507552519376DCB2B23EE1AFAO6&src=search', 1),
(67, 5, 5, 1, 13, 'Sunbrella Airy Outdoor Sunscreen Spray SPF 50+', 'https://images.soco.id/996b8862-0df2-4628-aafc-7718986a6716-.jpg', 'Rp37.000 - Rp38.000', 'YOU Sunbrella Sunscreen Spray memiliki SPF 50, yang menawarkan perlindungan tinggi dari sinar UVA dan UVB. Produk ini cocok untuk kulit sensitif dan berjerawat, serta memiliki tekstur watery yang ringan, tidak lengket, dan mudah menyerap ke dalam kulit.', 'Butane, isobutane, propane, water, diethylamino hydroxybenzoyl hexyl benzoate, isoamyl laurate, phenylbenzymidazole sulfonic acid, ethylhexyl salicylate, c12-15 alkyl ethylhexanoate, dimethicone, lauryl peg-9 polymethylsiloxyethyl dimethicone, tocopherol, polymethylsilsesquioxane, bis-ethylhexyloxyphenol methoxyphenyl triazine, trimethylsiloxysilicate, butylene glycol, ethylhexyl triazone, dipropylene glycol, hydroxyacetophenone, 1,2-hexanediol, caprylyl glycol, isopentyldiol, sodium hydroxide, phenoxyethanol, ethylhexylglycerin, menthyl lactate, Centella asiatica extract, ectoin, bisabolol, niacinamide, fragrance, propylene glycol, phospholipids', '1. Bersihkan wajah terlebih dahulu.\n2. Aplikasikan sunscreen secara merata ke seluruh area wajah.\n3. Diamkan beberapa saat agar sunscreen meresap ke dalam kulit.\n4. Disarankan untuk menggunakan sunscreen ini secara rutin setiap pagi dan siang hari.', 0, 'https://shopee.co.id/-NEW-YOU-Sunbrella-Airy-Outdoor-Sunscreen-Spray-SPF50-PA-Tabir-Surya-Mist-Sweatproof-and-Waterproof-Best-Selling--i.72375863.22750575480?sp_atk=77ef278c-2a5f-4afc-bc49-35b72b039a01&xptdk=77ef278c-2a5f-4afc-bc49-35b72b039a01', 'https://www.tokopedia.com/kiosmart88/you-sunbrella-airy-outdoor-sunscreen-spray-spf50-pa-sweatproof-and-waterproof-tabir-surya-mist?extParam=ivf=false&keyword=you+sunbrella+airy+outdoor+sunscreen+spray+spf50%2B+pa%2B%2B%2B%2B+tabir+surya+mist+sweatproof+and+waterproof&search_id=2024112508081019376DCB2B23EE27FN1B&src=search', 1),
(68, 6, 3, 8, 3, 'Bright Stuff Essence Sheet Mask', 'https://s3-ap-southeast-1.amazonaws.com/img-sociolla/img/p/2/6/9/0/7/26907-large_default.jpg', 'Rp15.000 - Rp17.000', 'Emina Bright Stuff Essence Sheet Mask terbuat dari bahan Tencel yang ramah lingkungan, cocok untuk semua bentuk wajah. Mengandung ekstrak Summer Plum dan Vitamin B3, masker ini bertujuan untuk memberikan tampilan kulit yang lebih cerah dan bercahaya, serta membuat kulit terasa lembut dan kenyal.', 'Aqua/Water, Glycerin, Niacinamide, Dipropylene Glycol, Methylpropanediol, PEG-40 Hydrogenated Castor Oil, Hydroxyacetophenone, Carbomer, Caffeine, Tromethamine, Allantoin, Caprylyl Glycol, Ethylhexylglycerin, Xanthan Gum, Butylene Glycol, Disodium EDTA, Fragrance (Parfum), Actinidia Polygama Fruit Extract', '1. Bersihkan Wajah: Pastikan wajah dalam keadaan bersih sebelum menggunakan masker.\n2. Pasang Masker: Tempelkan sheet mask pada wajah, sesuaikan dengan bentuk wajah.\n3. Tunggu: Biarkan masker menempel selama 10-20 menit.\n4. Pijat Lembut: Setelah melepas masker, pijat lembut sisa essence agar meresap ke dalam kulit.', 0, 'https://shopee.co.id/Emina-Bright-Stuff-Essence-Sheet-Mask-23-g-Masker-Wajah-Cerah-Kenyal-dan-Glowing-i.63983008.2202837877?sp_atk=95026411-8a7f-41ce-8b88-94b7cb348999&xptdk=95026411-8a7f-41ce-8b88-94b7cb348999', 'https://www.tokopedia.com/mearakosmetik/emina-bright-stuff-essence-sheet-mask?extParam=ivf=false&keyword=emina+bright+stuff+essence+sheet+mask&search_id=202411250758049A41D20D852EC531F385&src=search', 1),
(69, 6, 3, 2, 38, 'Revitalift Pro', 'https://mcgrocer.com/cdn/shop/files/425cf8e2d7893f5c77b1dcaab3ba4174.jpg?v=1710965244', 'Rp38.000 - Rp40.000', 'L\'Oréal Paris Revitalift Pro Mask adalah masker wajah yang dirancang untuk memberikan perawatan intensif untuk kulit yang tampak lebih muda dan cerah. Diformulasikan dengan bahan aktif yang efektif, produk ini membantu mengurangi tanda-tanda penuaan, seperti kerutan dan garis halus, serta meningkatkan kekenyalan kulit. Masker ini memberikan hidrasi yang mendalam dan meningkatkan elastisitas kulit, menjadikannya lebih halus dan tampak lebih segar. Dengan penggunaan rutin, kulit akan tampak lebih cerah, terhidrasi, dan terasa lebih kencang.', 'Water, Glycerin, Butylene Glycol, Dimethicone, Cetearyl Alcohol, Sodium Hyaluronate, Pro-Retinol (Retinyl Palmitate), Ascorbic Acid (Vitamin C), Sodium Citrate, Citric Acid, Panthenol (Pro-Vitamin B5), Phenoxyethanol, Ethylhexylglycerin, Fragrance, Disodium EDTA, Polysorbate 20, Carbomer, Xanthan Gum, Sodium Chloride, Sodium Hydroxide, CI 15985 (Yellow 6), CI 19140 (Yellow 5).', '1. Bersihkan wajah dengan pembersih yang sesuai dengan jenis kulit Anda.\n2. Aplikasikan masker secara merata pada wajah yang kering dan bersih, hindari area sekitar mata dan bibir.\n3. Diamkan masker selama 10-15 menit, biarkan bahan aktif meresap ke dalam kulit.\n4. Setelah itu, bilas dengan air hangat dan tepuk-tepuk wajah dengan lembut menggunakan handuk bersih.\n5. Gunakan masker ini 1-2 kali seminggu untuk hasil yang optimal.', 0, 'https://shopee.co.id/L%E2%80%99Oreal-Paris-Revitalift-Hyaluronic-Acid-Plumping-Fresh-Mix-Serum-Mask-33gr-Kulit-kering-Garis-halus-Kerutan-wajah-skin-barrier-Anti-aging-skincare-i.62579622.9011781433', 'https://www.tokopedia.com/tokomozza-23/paling-dicari-loreal-paris-revitalift-pro-youth-face-mask-plumping?extParam=ivf%3Dfalse&keyword=loreal+paris+revitalift+pro&search_id=2024112508040124DB532D7A91E5191FAW&src=search', 1),
(70, 6, 1, 5, 34, 'Sleeping Mask Aloe Vera', 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/Sleeping_Mask_Aloevera_4.jpg', 'Rp85.000 - Rp91.000', 'Natur Sleeping Mask Aloe Vera adalah masker wajah yang dirancang untuk digunakan di malam hari untuk membantu merawat kulit selama tidur. Diformulasikan dengan ekstrak aloe vera, produk ini memberikan hidrasi dan menenangkan kulit, sehingga cocok untuk kulit yang kering, lelah, atau iritasi. Sleeping mask ini bekerja selama Anda tidur, memberikan kelembapan yang mendalam dan memperbaiki kulit agar tampak lebih segar, lembut, dan terhidrasi saat bangun di pagi hari.', 'Aqua, Glycerin, Aloe Barbadensis Leaf Extract (Ekstrak Aloe Vera), Dimethicone, Butylene Glycol, Cetearyl Alcohol, Cyclopentasiloxane, Sodium Hyaluronate, Sodium Citrate, Phenoxyethanol, Ethylhexylglycerin, Fragrance, Disodium EDTA, Carbomer, Xanthan Gum, Tocopherol (Vitamin E), Citric Acid', '1. Bersihkan wajah terlebih dahulu dengan pembersih yang sesuai dengan jenis kulit Anda.\n2. Aplikasikan Natur Sleeping Mask Aloe Vera secara merata pada wajah dan leher.\n3. Diamkan masker semalaman agar dapat bekerja dengan optimal.\n4. Bilas wajah pada pagi hari dengan air hangat dan lanjutkan dengan rutinitas perawatan kulit pagi Anda.\n5. Gunakan masker ini 2-3 kali seminggu, atau sesuai kebutuhan kulit Anda.', 0, 'https://shopee.co.id/Natur-Miracle-Sleeping-Mask-Cica-100ml-Masker-Pelembab-Wajah-Berjerawat-i.38631574.7931551947?sp_atk=ce53ba1b-10c6-40f3-a907-8ce37fc893e7&xptdk=ce53ba1b-10c6-40f3-a907-8ce37fc893e7', 'https://www.tokopedia.com/rkiranaa/natur-miracle-sleeping-mask-aloe-vera-100-ml-masker-pelembab-wajah?extParam=ivf=false&keyword=natur+sleeping+mask+aloe+vera&search_id=2024112508013919376DCB2B23EE14D1VK&src=search', 1),
(71, 6, 4, 1, 17, 'Volcano 3D Acid Pore Clay Stick', 'https://images.soco.id/3866aab8-897a-40ee-904c-53416c9f192a-.jpg', 'Rp39.000 - Rp45.000', 'Clay mask dengan bahan utama Volcano Soil untuk membersihkan pori secara mendalam sekaligus dapat menenangkan kulit berjerawat, tanpa meninggalkan rasa kering atau berminyak. Mengandung 3D Acid yang merupakan gabungan dari LHA, Lactobionic Acid dan Mandelic Acid yang membantu membersihkan tampilan pori. Cocok digunakan untuk kulit berminyak dan berjerawat', 'AQUA, GLYCERIN, VOLCANIC SOIL, BUTYLENE GLYCOL, CI 77891, SODIUM PALMITATE, KAOLIN, MICA, CHARCOAL POWDER, CI 77499, CAPRYLOYL SALICYLIC ACID, LACTOBIONIC ACID, MANDELIC ACID, BETA-GLUCAN, JOJOBA WAX PEG-120 ESTERS, PEG-40 HYDROGENATED CASTOR OIL, AROMA, METHYL LACTATE, VERBASCUM THAPSUS EXTRACT, SACCHARIDE ISOMERATE, RHAMNOSE, PROPYLENE GLYCOL, GLYCERYL ACRYLATE/ACRYLIC ACID COPOLYMER, PVM/MA COPOLYMER, PHENOXYETHANOL, CAPRYLYL GLYCOL, ETHYLHEXYLGLYCERIN', '1. Ambil produk secukupnya, lalu oleskan ke wajah, hindari area mata. Biarkan selama 10-15 menit, lalu bilas dengan air. Gunakan 2-3 kali seminggu untuk hasil yang optimal.', 0, 'https://shopee.co.id/Glad2glow-Volcano-Clay-Mask-Masker-Komedo-Deep-Pores-Cleansing-Mud-Mask-30g-Masker-Wajah-Jelly-Mask-i.809769142.23856176929?sp_atk=affc1d7e-7de4-41c7-a5bc-6336e4c9ec69&xptdk=affc1d7e-7de4-41c7-a5bc-6336e4c9ec69', 'https://www.tokopedia.com/watsons/glad2glow-volcano-3d-acid-pore-clay-stick-25g?extParam=ivf=false&keyword=glad2glow+volcano+3d+acid+pore+clay+stick&search_id=202411250805177D06EAD75F130B312SVC&src=search', 1),
(72, 6, 1, 4, 39, 'Voynoon Charcoal Star Chok', 'https://brands.raenabeauty.com/cdn/shop/files/566ff569-66fe-4d4d-ad70-8f002f9ceb0d.jpg?v=1726186035&width=493', 'Rp227.000 - Rp250.000', 'Voynoon Charcoal adalah produk perawatan yang melembabkan kulit dan membantu memperbaiki garis-garis halus. Popping Charcoal: Titik-titik kecil seperti bintang membantu pengelupasan kulit yang lembut. Dilengkapi dengan spatula kecil untuk aplikasi yang lebih mudah.', 'Water, Dipropylene Glycol, Butylene Glycol, Glycerin, 1,2-Hexanediol, Methylpropanediol, Charcoal Powder, Chlorella Vulgaris Extract, Zea Mays (Corn) Starch, Sodium Hyaluronate, Monascus Extract, Carthamus Tinctorius (Safflower) Flower Extract, PEG-240/HDI Copolymer Bis-Decyltetradeceth-20 Ether', '1. Setelah mencuci muka.\n2. Letakkan beberapa masker di wajah dan oleskan dalam gerakan melingkar untuk mengaktifkan arang.\n3. Diamkan selama 5 - 10 menit.\n4. Kemudian bilas dengan air hangat.', 0, 'https://shopee.co.id/CHARIS-Voynoon-Charcoal-Star-Chok-Chok-Pack-i.68111.14899501211?sp_atk=fc634e72-d682-45c8-8ec2-c2b63b0f788d&xptdk=fc634e72-d682-45c8-8ec2-c2b63b0f788d', 'https://www.tokopedia.com/beautyhaulindo/charis-voynoon-charcoal-star-chok-chok-pack?extParam=ivf=false&keyword=voynoon+voynoon+charcoal+star+chok&search_id=20241124142550562F41F7E18E4E2B9KS1&src=search', 1),
(73, 6, 2, 8, 24, 'Lightening SuperSerum Mask', 'https://www.soco.id/cdn-cgi/image/w=360,format=auto,quality=100,dpr=1.5/https://images.soco.id/6617a82f-c5c0-457c-9e1d-821cc52791ea-.jpg', 'Rp18.000 - Rp21.000', 'New! With MOOD RELAXING TECH™ Teknologi Relaksasi Mood 1 MASKER = 3 BOTOL SERUM** 10x Concentrated Serum* Mencerahkan dan meratakan warna kulit bekas jerawat With Advanced Niacinamide & Licorice Extract Sheet mask dengan 100% degradable seaweed yang natural mengandung essence yang diformulasikan dengan kandungan 4x Advanced Niacinamide^^ dan Licorice Extract untuk mencerahkan, melembapkan, serta menyamarkan bekas jerawat. Untuk kulit cerah, terlindungi, dan tampak sehat! Dalam 15 menit^ = 2X Mencerahkan 4X Melembapkan', 'Aqua, Butylene Glycol, Glycerin, Niacinamide, 1,2-Hexanediol, Hydroxyacetophenone, Xanthan Gum, Tetrasodium EDTA, Fragrance, Propylene Glycol, Glycyrrhiza Glabra (Root) Extract', '1. Bersihkan wajah.\n2. Buka lipatan masker dan aplikasikan sheet mask pada wajah, hindari area mata dan bibir.\n3. Lepaskan masker setelah 15-20 menit pemakaian. Tepuk-tepuk lembut wajah agar essence terserap maksimal.\n4. Gunakan 2-3 kali seminggu, dapat dilanjutkan dengan rangkaian perawatan wajah lainnya.', 0, 'https://shopee.co.id/Wardah-Lightening-SuperSerum-Mask-20-ml-Masker-Wajah-dengan-4X-Niacinamide-ADV-Mencerahkan-dan-Memberikan-Relaksasi-Pada-Kulit-Wajah-Dengan-10X-Concentrated-Brightening-Serum-i.59763733.8408145035?sp_atk=8de55249-dfd7-413d-a3e5-93103cb26200&xptdk=8de55249-dfd7-413d-a3e5-93103cb26200', 'https://www.tokopedia.com/wardah-official/wardah-lightening-superserum-mask-20-ml-masker-wajah-dengan-4x-niacinamide-adv-mencerahkan-dan-memberikan-relaksasi-pada-kulit-wajah-dengan-10x-concentrated-brightening-serum?extParam=ivf=false&keyword=wardah+lightening+superserum+mask&search_id=2024112508055145F63534CB426C19FXJ4&src=search&whid=97508', 1),
(74, 6, 4, 6, 31, 'BHA Charcoal Calay Mask', 'https://incidecoder-content.storage.googleapis.com/64d14060-d5ff-4ed2-9d8d-174754275b77/products/the-originote-bha-charcoal-clay-mask/the-originote-bha-charcoal-clay-mask_front_photo_original.jpeg', 'Rp32.000 - Rp39.000', 'Masker Wajah Mud Mask Eksfoliasi Mengangkat Sel Kulit Mati Menghilangkan Minyak Berlebih.', 'Water, kaolin, glycerin, diatomaceous earth, bamboo charcoal, cetearyl alcohol, butylene glycol, sodium stearate, dimethicone, PEG-100 stearate, glyceryl stearate, phenoxyethanol, glycosyl trehalose, hydrogenated starch hydrolysate, panthenol, ammonium acryloyldimethyltaurate/VP copolymer, cetearyl glucoside, sorbitan olivate, chlorphenesin, ethylhexylglycerin, glycyrrhiza uralensis (licorice) root extract, portulaca oleracea flower/leaf/stem extract, paeonia suffruticosa root bark extract, paeonia lactiflora extract, xanthan gum, propylene glycol, sodium hyaluronate, caprylic/capric triglyceride, propanediol, 1,2-hexanediol, hydrogenated lecithin, hexylene glycol, stearic acid, cholesterol, salicylic acid, betaine salicylate, glycolic acid, ceramide NP, niacinamide, salix alba (willow) bark extract, propolis extract, saussurea involucrata extract, bisabolol, alpha-glucan oligosaccharide, calendula officinalis flower extract, artemisia argyi leaf extract, centella asiatica extract, hydroxyacetophenone, caprylhydroxamic acid, polymnia sonchifolia root juice, maltodextrin, lactobacillus', '1. Setelah membersihkan wajah, gunakan secara merata pada wajah. Hindari daerah mata dan mulut.\n2. Biarkan selama 10-15 menit dan bilas dengan air.\n3. Gunakan 1-2 kali seminggu untuk hasil yang lebih maksimal.', 0, 'https://shopee.co.id/The-Originote-BHA-Charcoal-Clay-Mask-Masker-Wajah-Mud-Mask-Eksfoliasi-Mengangkat-Sel-Kulit-Mati-Menghilangkan-Minyak-Berlebih-with-Charcoal-BHA-i.710619388.22323150888?sp_atk=60186188-4743-4349-8f57-e410cbbb5027&xptdk=60186188-4743-4349-8f57-e410cbbb5027', 'https://www.tokopedia.com/theoriginote/the-originote-bha-charcoal-clay-mask?extParam=cmp=1&ivf=false&keyword=the+originote+bha+charcoal+calay+mask&search_id=20241125080651BD6514B695B282061NKW&src=search&refined=true', 1),
(75, 5, 2, 3, 10, 'Hydrating Sunscreen', 'https://akcdn.detik.net.id/community/media/visual/2021/04/21/skin-barrier-rusak.png?w=1920', 'Rp64.000 - Rp72.000', 'Dermaluz Hydrating Sunscreen adalah sunscreen ringan dengan SPF 30 PA+++, yang dirancang untuk melindungi kulit dari sinar UV berbahaya sambil memberikan kelembapan dan efek menenangkan. Produk ini memiliki tekstur gel-krim yang mudah menyatu dengan kulit dan memberikan hasil akhir yang semi-dewy dan alami. Sunscreen ini sangat cocok untuk penggunaan sehari-hari, terutama bagi pemilik kulit kering atau sensitif, karena tidak mengandung pewangi atau bahan kimia keras.', 'Water, Glycerin, Ceramide, Niacinamide, Hyaluronic Acid, Aloe Vera Extract, Allantoin, Dimethicone, Cetearyl Alcohol, Cyclopentasiloxane, Butylene Glycol, Phenoxyethanol, Ethylhexylglycerin', '1. Cuci wajah terlebih dahulu dengan sabun wajah yang sesuai dengan jenis kulit Anda.\n2. Gunakan toner cair untuk menyiapkan kulit, agar lebih mudah meresap.\n3. Setelah toner meresap, ambil secukupnya Dermaluz Hydrating Sunscreen dan aplikasikan secara merata ke seluruh wajah.\n4. Gunakan pada wajah yang sedikit lembap untuk mendapatkan hasil aplikasi yang lebih mudah dan rata.\n5. Pijat lembut sunscreen ke kulit hingga meresap sempurna. Hindari area sekitar mata.\n6. Untuk perlindungan optimal, gunakan produk ini sebagai langkah terakhir dalam rutinitas perawatan kulit pagi hari.', 0, 'https://shopee.co.id/DERMALUZ-Hydrating-Sunscreen-i.43690338.9632546140?sp_atk=0a1751be-17ad-430a-80d6-1000b803577a&xptdk=0a1751be-17ad-430a-80d6-1000b803577a', 'https://www.tokopedia.com/makeupuccinoofficial/dermaluz-hydrating-sunscreen?extParam=ivf=false&keyword=dermaluz+hydrating+sunscreen&search_id=202411250807203D7D6A20C1DDD4262GLN&src=search', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk_masalah_kulit`
--

CREATE TABLE `produk_masalah_kulit` (
  `id_produk` int NOT NULL,
  `id_masalah_kulit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk_masalah_kulit`
--

INSERT INTO `produk_masalah_kulit` (`id_produk`, `id_masalah_kulit`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(3, 2),
(5, 2),
(6, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(50, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(59, 2),
(63, 2),
(64, 2),
(65, 2),
(67, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(15, 3),
(16, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(50, 3),
(51, 3),
(52, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(63, 3),
(64, 3),
(65, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(73, 3),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(66, 4),
(68, 4),
(69, 4),
(70, 4),
(72, 4),
(73, 4),
(3, 5),
(5, 5),
(6, 5),
(12, 5),
(14, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(28, 5),
(29, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(36, 5),
(37, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(48, 5),
(49, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(26, 6),
(28, 6),
(35, 6),
(37, 6),
(38, 6),
(39, 6),
(42, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(54, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(71, 6),
(72, 6),
(3, 7),
(5, 7),
(6, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(28, 7),
(29, 7),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(36, 7),
(37, 7),
(38, 7),
(40, 7),
(41, 7),
(42, 7),
(43, 7),
(44, 7),
(45, 7),
(46, 7),
(48, 7),
(49, 7),
(52, 7),
(53, 7),
(54, 7),
(55, 7),
(58, 7),
(60, 7),
(63, 7),
(64, 7),
(65, 7),
(66, 7),
(67, 7),
(68, 7),
(70, 7),
(71, 7),
(72, 7),
(73, 7),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(15, 8),
(16, 8),
(18, 8),
(19, 8),
(20, 8),
(21, 8),
(24, 8),
(28, 8),
(30, 8),
(31, 8),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 8),
(44, 8),
(45, 8),
(46, 8),
(47, 8),
(48, 8),
(49, 8),
(50, 8),
(51, 8),
(52, 8),
(56, 8),
(57, 8),
(58, 8),
(59, 8),
(60, 8),
(61, 8),
(63, 8),
(68, 8),
(69, 8),
(70, 8),
(73, 8);

-- --------------------------------------------------------

--
-- Table structure for table `produk_tipe_kulit`
--

CREATE TABLE `produk_tipe_kulit` (
  `id_produk` int NOT NULL,
  `id_tipe_kulit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk_tipe_kulit`
--

INSERT INTO `produk_tipe_kulit` (`id_produk`, `id_tipe_kulit`) VALUES
(3, 1),
(5, 1),
(6, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(36, 1),
(37, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(48, 1),
(49, 1),
(50, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(58, 1),
(60, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(73, 1),
(1, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(1, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(24, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(35, 4),
(37, 4),
(38, 4),
(39, 4),
(42, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(67, 4),
(70, 4),
(71, 4),
(72, 4),
(3, 5),
(5, 5),
(6, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(32, 5),
(33, 5),
(36, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(49, 5),
(53, 5),
(54, 5),
(55, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(70, 5),
(73, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id` int NOT NULL,
  `produk_id` int DEFAULT NULL,
  `id_tipe_kulit` int DEFAULT NULL,
  `id_masalah_kulit` int DEFAULT NULL,
  `usia` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rincian_pembayaran`
--

CREATE TABLE `rincian_pembayaran` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_dokter` int NOT NULL,
  `id_konsultasi` int NOT NULL,
  `jumlah_pembayaran` decimal(10,2) NOT NULL,
  `biaya_admin` decimal(10,2) NOT NULL,
  `total_pembayaran` decimal(10,2) NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `status_pembayaran` varchar(50) NOT NULL,
  `tanggal_pembayaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `pw_user` varchar(255) DEFAULT NULL,
  `konfir_pw_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `id_user`, `pw_user`, `konfir_pw_user`) VALUES
(1, 1, 'vns', 'vns'),
(2, 2, 'tes', 'tes'),
(3, 15, 'sss', 'sss'),
(4, 18, 'vns', 'vns'),
(5, 21, 'vns', 'vns'),
(6, 26, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kulit`
--

CREATE TABLE `tipe_kulit` (
  `id` int NOT NULL,
  `nama_tipe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tipe_kulit`
--

INSERT INTO `tipe_kulit` (`id`, `nama_tipe`) VALUES
(1, 'Kering'),
(2, 'Kombinasi'),
(3, 'Normal'),
(4, 'Berminyak'),
(5, 'Sensitif');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan_dokter`
--

CREATE TABLE `ulasan_dokter` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `dokter_id` int DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan_produk`
--

CREATE TABLE `ulasan_produk` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `produk_id` int DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT 'default_image.png',
  `email_user` varchar(255) DEFAULT NULL,
  `no_hp_user` varchar(15) DEFAULT NULL,
  `jk_user` char(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tgl_user` date DEFAULT NULL,
  `koin` int DEFAULT '0',
  `id_tipe_kulit` int DEFAULT '1',
  `id_masalah_kulit` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_user`, `gambar`, `email_user`, `no_hp_user`, `jk_user`, `tgl_user`, `koin`, `id_tipe_kulit`, `id_masalah_kulit`) VALUES
(1, 'Vannes nando', 'default_image.png', 'vanesvernando72@gmail.com', '085781086148', 'P', '2024-11-19', 4, 3, 4),
(2, 'nico 3', 'default_image.png', 'rigobertoCongreve@hotmail.com', '085781086148', 'L', '2024-12-21', 0, 1, 3),
(13, 'va', 'default_image.png', 'do@gmail.com', '085781086148', 'Laki-laki', '2024-12-01', 111, 5, 1),
(15, 'Vannes vernando ', 'default_image.png', 'vano72@gmail.com', '085781086148', 'L', '2025-01-04', 0, 5, 5),
(16, 'Vannes nando3', 'default_image.png', 'vanesvernando56@gmail.com', '085781086148', 'P', '2024-12-20', 1010, 2, 2),
(17, 'maulana', 'default_image.png', 'maul@gmail.com', '085781080977', 'P', '1985-08-11', 30, 3, 4),
(18, 'Ayunnie', 'default_image.png', 'sukagelay29@gmail.com', '085781086148', 'L', '2024-12-10', 0, 1, 1),
(20, 'Vannes nan90', 'default_image.png', 'vanesvernando90@gmail.com', '085781086148', 'P', '2024-12-19', 4, 3, 3),
(21, 'Ayunnie', 'default_image.png', 'sukagelay99@gmail.com', '085781086148', 'L', '2024-12-01', 0, 1, 1),
(22, 'Vannes nando', 'default_image.png', 'vanesvernando87@gmail.com', '085781086148', 'P', '2024-12-10', 4, 2, 2),
(23, 'eka', 'default_image.png', 'eka@gamil.com', '085781080999', 'P', '2024-12-05', 22202, 2, 3),
(24, 'jeje', 'default_image.png', 'vanesvernando66@gmail.com', '085781086148', 'P', '2024-12-11', 500, 2, 4),
(25, 'ayune', 'default_image.png', 'vanesvernando222@gmail.com', '085781086148', 'P', '2024-12-01', 40000, 2, 2),
(26, 'ayyunie', 'default_image.png', 'ayune12@gmail.com', '085781086148', 'P', '2024-12-11', 0, 1, 1),
(27, 'nando', 'default_image.png', 'vanesvernando432@gmail.com', '085781086148', 'L', '2004-09-11', 113, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_konsultasi` (`id_konsultasi`),
  ADD KEY `id_tipe` (`id_tipe`),
  ADD KEY `id_rekomendasi` (`id_rekomendasi`),
  ADD KEY `id_masalah_kulit` (`id_masalah_kulit`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_skincare`
--
ALTER TABLE `jenis_skincare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_masalah_kulit` (`id_masalah_kulit`),
  ADD KEY `id_tipe_kulit` (`id_tipe_kulit`);

--
-- Indexes for table `masalah_kulit`
--
ALTER TABLE `masalah_kulit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_konsultasi`
--
ALTER TABLE `pesan_konsultasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_konsultasi` (`id_konsultasi`),
  ADD KEY `id_pengirim` (`id_pengirim`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_tipe` (`id_tipe_kulit`),
  ADD KEY `id_masalah` (`id_masalah`),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `fk_kategori` (`id_kategori`);

--
-- Indexes for table `produk_masalah_kulit`
--
ALTER TABLE `produk_masalah_kulit`
  ADD PRIMARY KEY (`id_produk`,`id_masalah_kulit`),
  ADD KEY `id_masalah_kulit` (`id_masalah_kulit`);

--
-- Indexes for table `produk_tipe_kulit`
--
ALTER TABLE `produk_tipe_kulit`
  ADD PRIMARY KEY (`id_produk`,`id_tipe_kulit`),
  ADD KEY `id_tipe_kulit` (`id_tipe_kulit`);

--
-- Indexes for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id` (`produk_id`),
  ADD KEY `id_tipe_kulit` (`id_tipe_kulit`),
  ADD KEY `id_masalah_kulit` (`id_masalah_kulit`);

--
-- Indexes for table `rincian_pembayaran`
--
ALTER TABLE `rincian_pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_konsultasi` (`id_konsultasi`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tipe_kulit`
--
ALTER TABLE `tipe_kulit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulasan_dokter`
--
ALTER TABLE `ulasan_dokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indexes for table `ulasan_produk`
--
ALTER TABLE `ulasan_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_user` (`email_user`),
  ADD KEY `id_tipe_kulit` (`id_tipe_kulit`),
  ADD KEY `id_masalah_kulit` (`id_masalah_kulit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jenis_skincare`
--
ALTER TABLE `jenis_skincare`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masalah_kulit`
--
ALTER TABLE `masalah_kulit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pesan_konsultasi`
--
ALTER TABLE `pesan_konsultasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rincian_pembayaran`
--
ALTER TABLE `rincian_pembayaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipe_kulit`
--
ALTER TABLE `tipe_kulit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ulasan_dokter`
--
ALTER TABLE `ulasan_dokter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ulasan_produk`
--
ALTER TABLE `ulasan_produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`id_konsultasi`) REFERENCES `konsultasi` (`id`),
  ADD CONSTRAINT `diagnosis_ibfk_2` FOREIGN KEY (`id_tipe`) REFERENCES `tipe_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `diagnosis_ibfk_3` FOREIGN KEY (`id_rekomendasi`) REFERENCES `rekomendasi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `diagnosis_ibfk_4` FOREIGN KEY (`id_masalah_kulit`) REFERENCES `masalah_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD CONSTRAINT `konsultasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `konsultasi_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokters` (`id`),
  ADD CONSTRAINT `konsultasi_ibfk_3` FOREIGN KEY (`id_masalah_kulit`) REFERENCES `masalah_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `konsultasi_ibfk_4` FOREIGN KEY (`id_tipe_kulit`) REFERENCES `tipe_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pesan_konsultasi`
--
ALTER TABLE `pesan_konsultasi`
  ADD CONSTRAINT `pesan_konsultasi_ibfk_1` FOREIGN KEY (`id_konsultasi`) REFERENCES `konsultasi` (`id`),
  ADD CONSTRAINT `pesan_konsultasi_ibfk_2` FOREIGN KEY (`id_pengirim`) REFERENCES `users` (`id`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_skincare` (`id`),
  ADD CONSTRAINT `produk_ibfk_3` FOREIGN KEY (`id_masalah`) REFERENCES `masalah_kulit` (`id`),
  ADD CONSTRAINT `produk_ibfk_4` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `produk_ibfk_5` FOREIGN KEY (`id_tipe_kulit`) REFERENCES `tipe_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `produk_masalah_kulit`
--
ALTER TABLE `produk_masalah_kulit`
  ADD CONSTRAINT `produk_masalah_kulit_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `produk_masalah_kulit_ibfk_2` FOREIGN KEY (`id_masalah_kulit`) REFERENCES `masalah_kulit` (`id`);

--
-- Constraints for table `produk_tipe_kulit`
--
ALTER TABLE `produk_tipe_kulit`
  ADD CONSTRAINT `produk_tipe_kulit_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `produk_tipe_kulit_ibfk_2` FOREIGN KEY (`id_tipe_kulit`) REFERENCES `tipe_kulit` (`id`);

--
-- Constraints for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD CONSTRAINT `rekomendasi_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `rekomendasi_ibfk_2` FOREIGN KEY (`id_tipe_kulit`) REFERENCES `tipe_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `rekomendasi_ibfk_3` FOREIGN KEY (`id_masalah_kulit`) REFERENCES `masalah_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `rincian_pembayaran`
--
ALTER TABLE `rincian_pembayaran`
  ADD CONSTRAINT `rincian_pembayaran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `rincian_pembayaran_ibfk_2` FOREIGN KEY (`id_konsultasi`) REFERENCES `konsultasi` (`id`),
  ADD CONSTRAINT `rincian_pembayaran_ibfk_3` FOREIGN KEY (`id_dokter`) REFERENCES `dokters` (`id`);

--
-- Constraints for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD CONSTRAINT `sign_up_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `ulasan_dokter`
--
ALTER TABLE `ulasan_dokter`
  ADD CONSTRAINT `ulasan_dokter_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ulasan_dokter_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `dokters` (`id`);

--
-- Constraints for table `ulasan_produk`
--
ALTER TABLE `ulasan_produk`
  ADD CONSTRAINT `ulasan_produk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ulasan_produk_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_tipe_kulit`) REFERENCES `tipe_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_masalah_kulit`) REFERENCES `masalah_kulit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
