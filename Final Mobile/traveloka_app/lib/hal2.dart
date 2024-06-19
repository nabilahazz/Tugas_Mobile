import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Tambahkan aksi untuk menu di sini
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Bils',
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/avatar.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tempat favorit',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32.0), 
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 16), // Spasi awal
                  FavoritePlaceCard(image: 'images/Santorini.jpg'), 
                  FavoritePlaceCard(image: 'images/Calilo.jpg'), 
                  FavoritePlaceCard(image: 'images/Dubai.jpg'), 
                  FavoritePlaceCard(image: 'images/Bali.jpg'), 
                  FavoritePlaceCard(image: 'images/Maldives.jpg'), 
                  FavoritePlaceCard(image: 'images/Luminosa.jpg'), 
                  FavoritePlaceCard(image: 'images/Swiss.jpg'), 
                  FavoritePlaceCard(image: 'images/Korea.jpg'), 
                  SizedBox(width: 16), // Spasi akhir
            
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoritePlaceCard extends StatelessWidget {
  final String image;

  FavoritePlaceCard({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      constraints: BoxConstraints(
        maxHeight: 300, 
      ),
      margin: EdgeInsets.only(right: 16, bottom: 32), // Menambahkan margin bawah
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
