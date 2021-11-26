// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/route_name.dart';

class Daftar2Page extends StatelessWidget {
  const Daftar2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 35),
            Image(
              height: 60,
              image: AssetImage('assets/images/login/Logo Login & Daftar.png'),
            ),
            Text(
              'Sistem Informasi & Administrasi Aplikasi Polisi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 6,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // *Stepper
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // *Stepper #1
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      // color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.greenAccent, Colors.green],
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.greenAccent, Colors.green],
                    ),
                  ),
                ),

                // *Stepper #2
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.grey,
                ),

                // *Stepper #3
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 8,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/splashscreen/BackGround.png'),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // *Mabes
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6.0,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFD83636), Color(0xFF541C1C)],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/login/Icon Mabes White.png',
                                height: 35,
                                width: 35,
                              ),
                              Text(
                                'Mabes',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),

                        // *Polda
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.grey[200],
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey,
                            //     blurRadius: 6.0,
                            //     offset: Offset(3.0, 3.0),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/login/Icon Polda White.png',
                                height: 35,
                                width: 35,
                              ),
                              // Text(
                              //   'Polda',
                              //   style: TextStyle(color: Colors.black),
                              // ),
                            ],
                          ),
                        ),

                        // *Polres
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6.0,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/login/Icon Polres White.png',
                                height: 35,
                                width: 35,
                              ),
                              Text(
                                'Polres',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),

                        // *Polsek
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6.0,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/login/Icon Polsek White.png',
                                height: 35,
                                width: 35,
                              ),
                              Text(
                                'Polsek',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 125),
              child: ElevatedButton(
                child: Text('BERIKUTNYA'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Get.toNamed(RouteName.daftar3Page);
                },
              ),
            ),
            SizedBox(height: 75),
            Stack(
              children: [
                Divider(
                  thickness: 2,
                  indent: 40,
                  endIndent: 40,
                ),
                Center(
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      ' Sudah punya akun? ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 125),
              child: ElevatedButton(
                child: Text('MASUK'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
                onPressed: () {
                  Get.offAllNamed(RouteName.loginPage);
                },
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
