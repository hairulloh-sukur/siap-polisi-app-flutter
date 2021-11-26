// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siap_polisi_mitra_app/routes/route_name.dart';

class Daftar3Page extends StatelessWidget {
  const Daftar3Page({Key? key}) : super(key: key);

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
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
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
                          '2',
                          style: TextStyle(color: Colors.white, fontSize: 12),
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

                // *Stepper #3
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
            SizedBox(height: 75),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                child: Column(
                  children: [
                    DropdownSearch<String>(
                      mode: Mode.MENU,
                      dropdownSearchDecoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/login/Icon Satuan.png',
                            height: 5,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(0),
                        border: UnderlineInputBorder(),
                      ),
                      showSelectedItems: true,
                      items: [
                        'Anggota',
                        'Kepala',
                      ],
                      // hint: "Satuan / Divisi",
                      // onChanged: print,
                      // selectedItem: 'Anggota',
                    ),
                    DropdownSearch<String>(
                      mode: Mode.MENU,
                      dropdownSearchDecoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/login/Icon Satuan.png',
                            height: 5,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(0),
                        border: UnderlineInputBorder(
                            // borderSide: BorderSide(),
                            ),
                      ),
                      showSelectedItems: true,
                      items: [
                        'Anggota',
                        'Kepala',
                      ],
                      // hint: "Sub Divisi",
                      // onChanged: print,
                      // selectedItem: 'Anggota',
                    ),
                    DropdownSearch<String>(
                      mode: Mode.MENU,
                      dropdownSearchDecoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/login/Icon Jabatan.png',
                            height: 5,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(0),
                        border: UnderlineInputBorder(
                            // borderSide: BorderSide(),
                            ),
                      ),
                      showSelectedItems: true,
                      items: [
                        'Anggota',
                        'Kepala',
                      ],
                      // hint: "Jabatan",
                      // onChanged: print,
                      // selectedItem: 'Anggota',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 45, 20, 15),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Dengan menggunakan aplikasi ini, kamu setuju dengan  ',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Syarat & Ketentuan',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' dan '),
                    TextSpan(
                      text: 'Kebijakan Privasi',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' Kami'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 125),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('DAFTAR'),
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
              ),
            ),
            SizedBox(height: 95),
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
                      style: TextStyle(color: Colors.grey),
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
