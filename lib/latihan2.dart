
import 'package:flutter/material.dart';

class Latihan2DaftarProduk extends StatelessWidget {
  const Latihan2DaftarProduk({super.key});

  final List<Map<String, dynamic>> produk = const [
    {
      'nama': 'Laptop',
      'harga': 750000000,
      'deskripsi': 'Laptop untuk belajar dan bekerja.',
      'icon': Icons.laptop,
    },
    {
      'nama': 'Smartphone',
      'harga': 300000000,
      'deskripsi': 'Smartphone untuk komunikasi sehari-hari.',
      'icon': Icons.phone_android,
    },
    {
      'nama': 'Headphone',
      'harga': 590000,
      'deskripsi': 'Headphone untuk mendengarkan musik.',
      'icon': Icons.headphones,
    },
    {
      'nama': 'Keyboard',
      'harga': 750000,
      'deskripsi': 'Keyboard untuk mengetik.',
      'icon': Icons.keyboard,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: produk.length,
        itemBuilder: (context, index) {
          final item = produk[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(
                item['icon'] as IconData,
                size: 40,
                color: Colors.deepPurple,
              ),
              title: Text(item['nama']),
              subtitle: Text(
                'Rp ${item['harga']}',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailProduk(
                      produk: item,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailProduk extends StatelessWidget {
  final Map<String, dynamic> produk;

  const DetailProduk({
    super.key,
    required this.produk,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                produk['icon'] as IconData,
                size: 100,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 20),
              Text(
                produk['nama'],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Harga: Rp ${produk['harga']}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(
                produk['deskripsi'],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
