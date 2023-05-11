import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> imageList = [
    "https://raw.githubusercontent.com/adityaputra7/gambar/main/assets/Banyu-Kuning-Bojonegoro.jpg",
    "https://raw.githubusercontent.com/adityaputra7/gambar/main/assets/Banyu-Kuning-Bojonegoro2.jpg",
    "https://raw.githubusercontent.com/adityaputra7/gambar/main/assets/Banyu-Kuning-Bojonegoro3.jpg",
    "https://raw.githubusercontent.com/adityaputra7/gambar/main/assets/Banyu-Kuning-Bojonegoro4.jpg",
    "https://raw.githubusercontent.com/adityaputra7/gambar/main/assets/Banyu-Kuning-Bojonegoro5.jpg",
  ];
  final images = [
    "pngwing.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Kabupaten Bojonegoro With API',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Josefin Sans'),
          ),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child:
              ListView(padding: const EdgeInsets.all(0.0), children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(51, 205, 77, 1),
                    Color.fromARGB(255, 17, 159, 53)
                  ],
                ),
                image: DecorationImage(
                  image: AssetImage('../assets/pngwing.png'),
                  fit: BoxFit.fill,
                ),
              ),
              accountEmail: Text('adityaputrairfandi@bojonegoro.go.id'),
              accountName: Text('Aditya Putra Irfandi'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/'),
              title: const Text('Home'),
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/kecamatan'),
              title: const Text('Kecamatan'),
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/info'),
              title: const Text('Info'),
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(11),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Kabupaten Bojonegoro',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Josefin Sans'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    'Kabupaten Bojonegoro adalah sebuah kabupaten yang terletak di Provinsi Jawa Timur, Indonesia. Kabupaten ini memiliki luas wilayah sekitar 2.029,08 km² dan berpenduduk sekitar 1,2 juta jiwa (berdasarkan data tahun 2020). Ibu kota kabupaten ini adalah kota Bojonegoro.'
                    '\n\nSecara geografis, Kabupaten Bojonegoro terletak di bagian barat daya Jawa Timur dan berbatasan dengan Kabupaten Blora dan Kabupaten Rembang di Jawa Tengah di sebelah barat, Kabupaten Tuban dan Kabupaten Lamongan di sebelah utara, Kabupaten Nganjuk di sebelah timur, serta Kabupaten Mojokerto dan Kabupaten Jombang di sebelah selatan.'
                    '\n\nPerekonomian Kabupaten Bojonegoro didominasi oleh sektor pertanian, peternakan, dan perikanan. Produk pertanian utama yang dihasilkan antara lain padi, jagung, kedelai, kacang hijau, dan tebu. Kabupaten Bojonegoro juga terkenal dengan industri pengolahan minyak dan gas bumi, karena terdapat beberapa lapangan minyak dan gas bumi di daerah ini.'
                    '\n\nKabupaten Bojonegoro memiliki banyak tempat wisata yang menarik, di antaranya adalah Taman Nasional Baluran, Pantai Baron, Pantai Klayar, dan Taman Rekreasi Pandanwangi. Selain itu, terdapat pula berbagai situs sejarah dan budaya, seperti Candi Bajang Ratu dan Museum Bojonegoro.',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontFamily: 'Josefin Sans')),
                const Divider(),
              ]),
        ));
  }
}
