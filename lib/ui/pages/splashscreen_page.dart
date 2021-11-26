// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/route_name.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getThingsOnStartup().then((_) => Get.offNamed(RouteName.loginPage));
  }

  Future _getThingsOnStartup() async {
    // print('Things To do');
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image(
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/splashscreen/BackGround.png'),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 275,
                    image: AssetImage(
                        'assets/images/splashscreen/Logo Splash Screen.png'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Sistem Informasi & Administrasi Aplikasi Polisi',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Alpha Version',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
