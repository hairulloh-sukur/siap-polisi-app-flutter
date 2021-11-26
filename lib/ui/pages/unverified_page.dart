// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/route_name.dart';
import '../../controllers/auth_controller.dart';

class UnverifiedPage extends StatelessWidget {
  const UnverifiedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

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
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: IconButton(
                  padding: EdgeInsets.only(left: 20),
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 325,
                    image: AssetImage(
                        'assets/images/unverified/Image Loading.png'),
                  ),
                  Text(
                    'Mohon Tunggu Konfirmasi oleh OPERATOR',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  child: Text('VERIFY'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.green,
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.green),
                    ),
                  ),
                  onPressed: () {
                    authController.verify().then((_) {
                      if (authController.isVerified.value == true) {
                        Future.delayed(Duration(seconds: 2))
                            .then((_) => Get.offAllNamed(RouteName.homePage));
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
