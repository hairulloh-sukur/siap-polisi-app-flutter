// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'widgets/panic_item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *AppBar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Transform.translate(
            offset: Offset(15, 0),
            child: IconButton(
              onPressed: () {},
              icon: Image(
                height: 30,
                image: AssetImage('assets/images/homepage/Icon GPS.png'),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(10, 0),
            child: VerticalDivider(
              thickness: 1,
              indent: 35,
              endIndent: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: Image(
                height: 35,
                image: AssetImage('assets/images/homepage/Icon Down Menu.png'),
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Image(
              height: 35,
              image: AssetImage('assets/images/login/Logo Login & Daftar.png'),
            ),
            SizedBox(height: 5),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 8,
      ),

      // *Body
      body: ListView(
        children: [
          // *Item Card
          SizedBox(height: 10),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
          PanicItemCard(),
        ],
      ),

      // *Pannic Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 150,
        width: 150,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          highlightElevation: 0,
          elevation: 0,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('SOS, Need Help!'),
              ),
            );
          },
          backgroundColor: Colors.transparent,
          child: Image(
            image: AssetImage(
              'assets/images/homepage/Button Panic Enable.png',
            ),
          ),
        ),
      ),
    );
  }
}
