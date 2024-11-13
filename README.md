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

# Jawaban Tugas 8

1) Const digunakan untuk membuat sebuah object atau widget menjadi immutable. keuntungan dari enggunaan const antara lain, opstimasi memori, membuat performa aplikasi lebih baik, dan stabilitas. Const digunakan ketika kita ingin widget kita tidak berubah selama siklus hidup aplikasi. Kemudian, kita tidak menggunakan const ketika ingin memiliki widget yang bergantung pada data dinamis.

2) Column mengatur layout widget secara vertikal dan row mengatur layout widget secara horizontal. Contoh implementasi dari Column pada aplikasi adalah pengaturan tata letak kumpulan infocard dan button pada aplikasi dan implementasi Row pada aplikasi adalah pengaturan pada setiam card yang ada pada infocard.

3) Elemen input yang saya gunakan adalah TextFormField. Elemen input yang sata tidak gunakan antara lain, Checkbox (untuk pilihan ya atau tidak), Radio (untuh pilihan dari beberapa opsi), slider (untuk memilih nilai dalam rentang tertentu).

4) Dengan membuat ThemeData pada MaterialApp. Dalam ThemeData, kita dapat mementukan berbagai opsi untuk tema aplikasi, dan pada aplikasi yang saya buat, saya menggunakan colorScheme untuk mengatur warna default aplikasi.

5) Menggunakan Navigator dan melakukan routing ke halaman yang ingin kita buka pada aplikasi