
import 'package:flutter/material.dart';
import 'latihan1.dart' as latihan1;
import 'latihan2.dart' as latihan2;
import 'latihan3.dart';
import 'bonus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Navigasi Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenu(),

        '/latihan1_beranda': (context) =>
        const latihan1.Latihan1Beranda(),

        '/latihan3_beranda': (context) =>
        const Latihan3Beranda(),

        '/latihan3_profil': (context) =>
        const Latihan3Profil(),

        '/latihan3_detail': (context) =>
        const Latihan3Detail(),
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Navigasi & Routing'),
        backgroundColor:
        Theme.of(context).colorScheme.inversePrimary,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                  const latihan1.Latihan1Beranda(),
                ),
              );
            },
            child: const Text('Latihan 1: push & pop'),
          ),

          const SizedBox(height: 12),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                  const latihan2.Latihan2DaftarProduk(),
                ),
              );
            },
            child: const Text(
              'Latihan 2: Kirim Data (Daftar & Detail Produk)',
            ),
          ),

          const SizedBox(height: 12),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/latihan3_beranda',
              );
            },
            child: const Text(
              'Latihan 3: Named Routes dengan Argumen (3 Halaman)',
            ),
          ),

          const SizedBox(height: 12),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const BonusBottomNav(),
                ),
              );
            },
            child: const Text(
              'Bonus: BottomNavigationBar (3 Tab)',
            ),
          ),
        ],
      ),
    );
  }
}
