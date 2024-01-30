
-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Jan 29, 2024 at 22:25:34:PM


CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL AUTO_INCREMENT,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  PRIMARY KEY (`DetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;

INSERT INTO detailpenjualan VALUES
("1","1","2","1","25000.00"),
("2","1","4","1","10000.00"),
("3","1","1","1","7000.00"),
("4","2","5","1","12000.00"),
("5","2","6","1","12000.00"),
("6","2","7","1","15000.00"),
("7","2","8","1","3500.00"),
("8","3","1","1","7000.00"),
("9","3","20","1","17000.00"),
("10","4","9","1","18000.00"),
("11","4","10","1","40000.00"),
("12","4","13","1","3000.00"),
("16","6","1","1","7000.00"),
("18","1","1","1","7000.00"),
("19","1","2","1","25000.00"),
("20","1","3","1","3000.00"),
("21","2","4","1","10000.00"),
("22","2","5","1","12000.00"),
("23","3","6","1","12000.00"),
("24","3","7","1","15000.00"),
("25","4","10","1","40000.00"),
("26","4","8","1","3500.00"),
("27","4","14","1","17000.00"),
("30","6","5","2","12000.00"),
("32","8","4","2","10000.00"),
("33","9","7","2","15000.00"),
("34","1","1","1","7000.00"),
("35","1","2","1","25000.00"),
("36","1","3","1","3000.00"),
("37","2","4","1","10000.00"),
("38","2","5","1","12000.00"),
("39","3","7","1","15000.00"),
("40","3","8","1","3500.00"),
("41","1","1","2","7000.00"),
("42","1","2","1","25000.00"),
("43","1","10","2","40000.00"),
("44","1","2","1","25000.00"),
("45","1","3","1","3000.00"),
("46","1","1","1","7000.00"),
("47","1","2","1","25000.00"),
("48","1","3","1","3000.00"),
("49","1","4","1","10000.00"),
("50","2","10","1","40000.00"),
("51","2","9","1","18000.00"),
("52","3","8","1","3500.00"),
("53","3","7","1","15000.00"),
("54","3","6","1","12000.00"),
("55","4","20","1","17000.00"),
("56","4","19","1","12000.00"),
("57","5","17","1","13000.00"),
("58","5","15","1","5000.00"),
("59","6","1","1","7000.00"),
("60","6","2","1","25000.00"),
("61","6","3","1","3000.00"),
("62","7","1","1","7000.00"),
("63","8","1","1","7000.00");

CREATE TABLE `keranjang` (
  `KeranjangID` int(10) NOT NULL AUTO_INCREMENT,
  `ProdukID` int(10) NOT NULL,
  `Jumlah` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`KeranjangID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

INSERT INTO keranjang VALUES
("68","1","1","1"),
("69","2","1","1"),
("70","3","1","1");

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL,
  PRIMARY KEY (`PelangganID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO pelanggan VALUES
("1","Umum","Umum","0000000000000"),
("2","Pibri","Jl Marga","081339682031"),
("3","Nia","Jl Tanah Lot","08508466041"),
("4","Diah","Jl Blubuh Sari","0895394536866"),
("5","Risma","Jl Dalung","085792958529");

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL AUTO_INCREMENT,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL,
  PRIMARY KEY (`PenjualanID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO penjualan VALUES
("1","2024-01-23","45000.00","1"),
("2","2024-01-23","58000.00","2"),
("3","2024-01-23","30500.00","3"),
("4","2024-01-23","29000.00","4"),
("5","2024-01-23","18000.00","5"),
("6","2024-01-23","35000.00","1"),
("7","2024-01-23","7000.00","1"),
("8","2024-01-23","7000.00","1");

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(25) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  PRIMARY KEY (`ProdukID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO produk VALUES
("1","5449000000996","Coca Cola","7000.00","100"),
("2","8400438760","Samyang Carbonara","25000.00","100"),
("3","5285000396406","Indomie Goreng","3000.00","100"),
("4","8851019010076","Pocky Chocolate","10000.00","100"),
("5","8996001301142","Roma Kelapa","12000.00","100"),
("6","8996001354117","Kalpa Wafer Chocolate","12000.00","100"),
("7","9317557030017","Yakult","15000.00","100"),
("8","8696646130113","Golda Coffe","3500.00","100"),
("9","6281006475243","Shampoo Lifebuoy","18000.00","100"),
("10","8711700633987","Shampoo Tresemme","40000.00","100"),
("11","6001087014588","Vaseline Body Lotion","55000.00","100"),
("12","4005808236879","Nivea Body Lotion","36000.00","100"),
("13","6009625141055","Aqua Mineral Water","3000.00","100"),
("14","8999999533496","Kecap Bango","17000.00","100"),
("15","8996899226483","Bon Cabe","5000.00","100"),
("16","8992696405585","Dancow Bubuk","50000.00","100"),
("17","8968659815","Chitato Sapi Panggang","13000.00","100"),
("18","8991102300421","Tango Wafer","11000.00","100"),
("19","8998866201452","Potabee Chips","12000.00","100"),
("20","8991001121615","Silverqueen","17000.00","100");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO user VALUES
("1","Diah","admin","admin","1"),
("3","diah","didi","user","2");