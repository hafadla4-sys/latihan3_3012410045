import 'package:flutter/material.dart';

class BonusBottomNav extends StatefulWidget {
  const BonusBottomNav({super.key});

  @override
  State<BonusBottomNav> createState() => _BonusBottomNavState();
}

class _BonusBottomNavState extends State<BonusBottomNav> {
  int _currentIndex = 0;

  final List<Widget> _halaman = const [
    Center(child: Text('Halaman Beranda', style: TextStyle(fontSize: 20))),
    Center(child: Text('Halaman Cari', style: TextStyle(fontSize: 20))),
    Center(child: Text('Halaman Profil', style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bonus - Bottom Navigation')),
      body: _halaman[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}