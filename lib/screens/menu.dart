import 'package:flutter/material.dart';
import 'package:kenz_kitchen_mobile/widgets/left_drawer.dart';
import 'package:kenz_kitchen_mobile/widgets/product_card.dart';

class MyHomePage extends StatelessWidget {
  final String npm ='2306209441'; // NPM
  final String name ='Farrel Ahmad Ilyasa'; //Nama
  final String className ='PBP E'; //Kelas
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Produk", Icons.list, Colors.orange.shade400),
    ItemHomepage("Tambah Produk", Icons.add, Colors.green),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan Body.
	  return Scaffold(
        // AppBar adalah bagian atas halaman yang menampilkan judul.
        appBar: AppBar(
          //Judul aplikasi 'Kenz Kitchen Application" dengan teks putih dan tebal.
          title: const Text(
            'Kenz Kitchen Application',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ), 
          // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
          backgroundColor: Theme.of(context).colorScheme.primary,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawer: const LeftDrawer(),
        // Body halaman dengan padding di sekelilingnya.
        body: Padding(
          padding: const EdgeInsets.all(16),
          // Menyusun widget secara vertikal dalam sebuah kolom.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row untuk menampilkan 3 infoCard secara horizontal.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'NPM', content: npm),
                  InfoCard(title: 'Name', content: name),
                  InfoCard(title: 'Class', content: className),
                ]
              ),

              // Memberikan jarak vertikal 16 unit.
              const SizedBox(height: 16.0),

              // Menempatkan widget berikutnya di tengah halaman.
              Center(
                child: Column(
                  // Menyusun teks dan grid item secara vertikal
                  children: [
                    // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'Welcome to Kenz Kitchen Application',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                    GridView.count(
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      // Agar grid menyesuaikan tinggi kontennya.
                      shrinkWrap: true,

                      // Menampilakn ItemCard untuk setiap item dalam list items.
                      children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                      }).toList(),
                    )
                  ],
                )
              )
            ]
          ))
	  );
  }

}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title; // Judul kartu
  final String content; // Isi Kartu

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      //Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width /3.5,
        padding: const EdgeInsets.all(16.0),
        //Menyusun title dan content secara vertical.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content, textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}