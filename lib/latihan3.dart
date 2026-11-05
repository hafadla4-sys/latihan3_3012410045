import 'package:flutter/material.dart';

// ==========================================
// Halaman 1: Beranda khusus Latihan 3 (Pengirim Argumen)
// ==========================================
class Latihan3Beranda extends StatelessWidget {
  const Latihan3Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 3 - Beranda'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Halaman 1: Beranda Latihan 3',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Pindah ke Halaman 2 (Profil) via Named Route
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/latihan3_profil');
              },
              child: const Text('Ke Halaman Profil (Halaman 2)'),
            ),
            const SizedBox(height: 12),
            // Pindah ke Halaman 3 (Detail) via Named Route + Kirim Argumen
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/latihan3_detail',
                  arguments: 'Halo, ini data argumen dari Beranda Latihan 3!',
                );
              },
              child: const Text('Ke Halaman Detail + Kirim Data (Halaman 3)'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// Halaman 2: Profil (Named Route tanpa argumen)
// ==========================================
class Latihan3Profil extends StatelessWidget {
  const Latihan3Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 3 - Profil'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 60, color: Colors.deepPurple),
            const SizedBox(height: 12),
            const Text(
              'Halaman 2: Profil User',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali ke Beranda Latihan 3'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// Halaman 3: Detail (Penerima Argumen)
// ==========================================
class Latihan3Detail extends StatelessWidget {
  const Latihan3Detail({super.key});

  @override
  Widget build(BuildContext context) {
    // Membaca argumen yang dikirim dari Halaman 1 (Beranda)
    final argumen =
        ModalRoute.of(context)?.settings.arguments as String? ?? 'Tidak Ada Data';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 3 - Named Route Detail'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Argumen yang diterima:'),
            const SizedBox(height: 8),
            Text(
              argumen,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}