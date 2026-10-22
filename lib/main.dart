import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeri Foto',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: const GaleriFotoPage(),
    );
  }
}

class GaleriFotoPage extends StatelessWidget {
  const GaleriFotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text('Galeri Foto'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/88-300x200.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'Jalan di Barcelona',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const Divider(height: 1, indent: 16, endIndent: 16),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: Row(
                children: [
                  Icon(Icons.place, color: Colors.red, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Lokasi: Barcelona, Spanyol',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Row(
                children: [
                  Icon(Icons.calendar_month, color: Colors.blue, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Publikasi: 13 Agustus 2013',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            const Divider(height: 1, indent: 16, endIndent: 16),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                'Deskripsi',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                'Sebuah persimpangan jalan di Barcelona, Spanyol. '
                'Foto ini menampilkan berbagai kendaraan yang '
                'bergerak dalam arah yang berbeda, menciptakan '
                'pemandangan yang sibuk dan energik.',
                style: TextStyle(
                  fontSize: 12,
                  height: 1.2,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
