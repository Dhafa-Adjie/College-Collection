class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double hitungTotalHargaTanpaDiskon(){
    return harga * jumlah;
  }

  double hitungTotalHargaSetelahDiskon(){
    return hitungTotalHargaTanpaDiskon() - (hitungTotalHargaTanpaDiskon() * diskon);
  }

  double diskonDalamPersen(){
    return diskon * 100;
  }
  

  void tampilInformasiProduk(){
    print('Nama Produk: $namaProduk \nHarga Satuan: Rp. ${harga.toInt()} \nJumlah: $jumlah \nDiskon: ${(diskonDalamPersen()).toInt()}%');
  }
}
void main(){
  var produk1 = Produk('Canon', 2000000, 2, 0.2);

  produk1.tampilInformasiProduk();
  print('Total Harga Tanpa Diskon: Rp. ${(produk1.hitungTotalHargaTanpaDiskon()).toInt()}');
  print('Total Harga Setelah Diskon: Rp. ${(produk1.hitungTotalHargaSetelahDiskon()).toInt()}');

  print('\n');

  var produk2 = Produk('Sony', 35000000, 1, 0.1);
  produk2.tampilInformasiProduk();
  print('Total Harga Tanpa Diskon: Rp. ${(produk2.hitungTotalHargaTanpaDiskon()).toInt()}');
  print('Total Harga Setelah Diskon: Rp. ${(produk2.hitungTotalHargaSetelahDiskon()).toInt()}');
}