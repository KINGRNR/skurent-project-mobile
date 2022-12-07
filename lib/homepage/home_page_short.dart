import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:rent_app/homepage/category_card.dart';

class HomePageShort extends StatelessWidget {
  const HomePageShort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC1D3FF),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'PROJECT',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mail_outlined,
              color: Colors.black,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.black,
              size: 32,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 36,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Browse by Categories',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 47,
              ),
              // baris 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // camera card
                  CategoryCard(gambar: 'camera', judul: 'Camera'),
                  // speaker card
                  CategoryCard(gambar: 'speaker', judul: 'Sound System'),
                ],
              ),
              const SizedBox(
                height: 53,
              ),
              // baris 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // tenda card
                  CategoryCard(gambar: 'tenda', judul: 'Tent'),
                  // kursi card
                  CategoryCard(gambar: 'kursi', judul: 'Chair & Table'),
                ],
              ),
              const SizedBox(
                height: 53,
              ),
              // baris 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // decoration card
                  CategoryCard(gambar: 'decoration', judul: 'Decoration Set'),
                  // others card
                  CategoryCard(gambar: '', judul: 'Others', others: true),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
