// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../../routes/route_name.dart';

class Daftar1Page extends StatelessWidget {
  // const Daftar1Page({Key? key}) : super(key: key);

  final TextEditingController namaController = TextEditingController();
  final TextEditingController nrpController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

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
                        '1',
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

                // *Stepper #2
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
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 60,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/login/Photo Profil.png'),
                  ),
                  Image(
                    image:
                        AssetImage('assets/images/login/Photo Profil Add.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // *Nama
                    TextFormField(
                      controller: namaController,
                      decoration: InputDecoration(
                        hintText: 'Nama',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 5,
                            image:
                                AssetImage('assets/images/login/Icon Nama.png'),
                          ),
                        ),
                        // Icon(Icons.badge),
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan Nama';
                        }
                        return null;
                      },
                    ),

                    // *NRP
                    TextFormField(
                      controller: nrpController,
                      decoration: InputDecoration(
                        hintText: 'NRP',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 5,
                            image:
                                AssetImage('assets/images/login/Icon NRP.png'),
                          ),
                        ),
                        // Icon(Icons.badge),
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan NRP';
                        }
                        return null;
                      },
                    ),

                    // *No HP
                    TextFormField(
                      controller: noHpController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: '8120000001',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: SizedBox(
                          width: 82,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Image(
                                  height: 40,
                                  image: AssetImage(
                                      'assets/images/login/Icon Flag Indonesia.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  '+62',
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan No. HP';
                        }
                        return null;
                      },
                    ),

                    // *Password
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 5,
                            image: AssetImage(
                                'assets/images/login/Icon Gembok.png'),
                          ),
                        ),
                        // Icon(Icons.badge),
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan Password';
                        }
                        return null;
                      },
                    ),

                    // *Confirm Password
                    TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Konfirmasi Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 5,
                            image: AssetImage(
                                'assets/images/login/Icon Gembok.png'),
                          ),
                        ),
                        // Icon(Icons.badge),
                      ),
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan Konfirmasi Password';
                        } else if (value != passwordController.text) {
                          return 'Konfirmasi Password tidak sama';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),

            // *Tombol Berikutnya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 125),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFD83636), Color(0xFF541C1C)],
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          authController
                              .register(
                            namaController.text,
                            nrpController.text,
                            noHpController.text,
                            passwordController.text,
                          )
                              .then((_) {
                            if (authController.isRegistered.value == true) {
                              Future.delayed(Duration(seconds: 2)).then(
                                  (_) => Get.toNamed(RouteName.daftar2Page));
                            }
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                        'BERIKUTNYA',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),

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
            SizedBox(height: 10),

            // *Tombol Masuk
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
