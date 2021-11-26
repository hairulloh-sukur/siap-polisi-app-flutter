// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:siap_polisi_mitra_app/routes/route_name.dart';

import '../../../controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  final TextEditingController nrpController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            SizedBox(height: 25),
            Image(
              height: 80,
              image: AssetImage('assets/images/login/Logo Login & Daftar.png'),
            ),
            SizedBox(height: 5),
            Text(
              'Sistem Informasi & Administrasi Aplikasi Polisi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
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
            SizedBox(height: 65),
            Text(
              'Masukkan NRP dan nomor HP untuk Masuk',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
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
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan Password';
                        }
                        return null;
                      },
                    ),

                    // *Anggota
                    DropdownSearch<String>(
                      mode: Mode.MENU,
                      dropdownSearchDecoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 5,
                            image:
                                AssetImage('assets/images/login/Icon Nama.png'),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(0),
                        border: UnderlineInputBorder(
                            // borderSide: BorderSide(),
                            ),
                      ),
                      showSelectedItems: true,
                      items: [
                        'Ketua',
                        'Wakil',
                        'Anggota',
                      ],
                      // hint: "Mode",
                      // onChanged: print,
                      selectedItem: 'Anggota',
                    ),
                  ],
                ),
              ),
            ),

            // *Agreement
            Padding(
              padding: const EdgeInsets.all(20.0),
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

            // *Tombol MASUK
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
                              .login(
                            nrpController.text,
                            noHpController.text,
                            passwordController.text,
                          )
                              .then((_) {
                            if (authController.isAuth.value == true) {
                              Future.delayed(Duration(seconds: 2)).then((_) {
                                if (authController.isVerified.value == true) {
                                  Get.offAllNamed(RouteName.homePage);
                                } else {
                                  Get.toNamed(RouteName.unverifiedPage);
                                }
                              });
                            }
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                        'MASUK',
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

            SizedBox(height: 25),
            Text(
              'Pulihkan Akun',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 65),
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
                      'belum punya akun?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            // *Tombol Daftar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 125),
              child: ElevatedButton(
                child: Text('DAFTAR'),
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
                  Get.offAllNamed(RouteName.daftar1Page);
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
