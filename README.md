# Jawaban Tugas 7

1) stateless Widget adalah widget yang tidak memiliki state yang dapat berubah setelah widget dibuat. Sehingga tampilan data di dalam widget tidak akan berubah kecuali widget diinisiasi ulang. Sedangkan stateful widget adalah widget yang dapat berubah-ubah sesuai dengan state yang dimilikinya. Sehingga tampilan data di dalam widget dapat diperbarui selama runtime.

2) 
- Scaffold: Merupakan struktur dasar halaman
- Container: Mengatur tata letak elemen di aplikasi
- Appbar: Header halaman
- Padding: Mengatur jarak antar widget anak
- Column: Menyusun widget secara vertikal
- Row: Menyusun widget secara horizontal
- Icon: Menampilkan Icon
- Card: Menampilkan elemen
- Text: Menampilkan Teks

3) setState() digunakan dalam StatefulWidget untuk memperbarui state widget secara dinamis. Ketika setState() dipanggil, Flutter akan merender ulang widget yang dipengaruhi oleh perubahan state, sehingga tampilan dapat diperbarui sesuai perubahan data.

4) const digunakan untuk mendeklerasikan variabel pada waktu kompilasi. Sedangkan final digunakan untuk mendeklerasikan variabel yang nilainya diinisialisasi satu kali saja.

5) 
- Program Flutter pertama kali diinisiasi dengan flutter create.
- Penambahan button dapat dilakukan dengan membuat list kelas ItemHomepage
- Membuat button dengan warna yang berbeda dapat dilakukan dengan cara menambahkan parameter color pada ItemHomepage sehingga setiap item memiliki warna yang unik. Kemudian, pada child container dapat diatur warnanya sesuai dengan warna yang dimiliki oleh object ItemHomePage.
