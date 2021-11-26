// ignore_for_file: avoid_print, prefer_const_constructors

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  var nrp = ''.obs;
  var isRegistered = false.obs; // ?true, jika user terdaftar
  var isVerified = false.obs; // ?true, jika user terverifikasi
  var isAuth = false.obs; // ?true, jika user berhasil login

  final apiAnggota = 'http://103.171.84.167/api/anggota/';

  // *Register Anggota
  Future<void> register(
      String namaTxt, String nrpTxt, String noHpTxt, String passwordTxt) async {
    Uri url = Uri.parse(apiAnggota + 'register');

    print(
        'Register -> Nama: $namaTxt,  NRP: $nrpTxt, No. HP: $noHpTxt, Password: $passwordTxt');

    Map<String, String> body = {
      'nrp': nrpTxt,
      'nama': namaTxt,
      'nohp': noHpTxt,
      'password': passwordTxt,
    };

    try {
      var request = http.MultipartRequest('POST', url);
      request.fields.addAll(body);

      http.StreamedResponse response = await request.send();

      // *Register statusCode: 200
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        var responseData = await response.stream.bytesToString();
        var data = json.decode(responseData);

        print(data);

        Get.snackbar(
          'Info',
          data['message'].toString(),
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 2),
        );

        if (data['message'].toString() ==
            'Data telah terdaftar, silahkan tunggu approval') {
          print('Register -> Success');

          isRegistered.value = true;
        } else {
          print('Register -> Failed');

          isRegistered.value = false;
        }

        // *Register statusCode: 400 - 500
      } else if (response.statusCode >= 400 && response.statusCode <= 599) {
        var responseData = await response.stream.bytesToString();
        var data = json.decode(responseData);

        print(data);

        Get.snackbar(
          'Error',
          data['message'] ?? data['error'],
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 2),
        );

        print('Register -> Failed');

        isRegistered.value = false;
      }
    } catch (e) {
      print(e);
    }
  }

  // *Login
  Future<void> login(String nrpTxt, String noHpTxt, String passwordTxt) async {
    Uri url = Uri.parse(apiAnggota + 'login');

    print('Login -> NRP: $nrpTxt, No. HP: $noHpTxt, Password: $passwordTxt');

    Map<String, String> body = {
      'nrp': nrpTxt,
      'nohp': noHpTxt,
      'anggota': '',
      'password': passwordTxt,
    };

    try {
      var request = http.MultipartRequest('POST', url);
      request.fields.addAll(body);

      http.StreamedResponse response = await request.send();

      // *Login statusCode: 200
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        var responseData = await response.stream.bytesToString();

        var data = json.decode(responseData);

        Get.snackbar(
          'Info',
          data['message'].toString(),
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 2),
        );

        if (data['message'].toString() == 'login berhasil') {
          print('Login -> Success');

          nrp.value = nrpTxt;
          isAuth.value = true;
          isVerified.value = true;
        } else if (data['message'].toString() == 'your account need Approval') {
          print('Login -> Need Approval');

          nrp.value = nrpTxt;
          isAuth.value = true;
          isVerified.value = false;
        } else {
          print('Login -> Failed');

          nrp.value = '';
          isAuth.value = false;
          isVerified.value = false;
        }

        // *Login statusCode: 400 - 500
      } else if (response.statusCode >= 400 && response.statusCode <= 599) {
        var responseData = await response.stream.bytesToString();
        var data = json.decode(responseData);

        Get.snackbar(
          'Error',
          data['message'] ?? data['error'],
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 2),
        );

        print('Login -> Failed');

        nrp.value = '';
        isAuth.value = false;
        isVerified.value = false;
      }
    } catch (e) {
      print(e);
    }
  }

  // *Verifikasi
  Future<void> verify() async {
    Uri url = Uri.parse(apiAnggota + 'approve/' + nrp.value);

    print('Verify -> NRP: ${nrp.value}');

    try {
      var request = http.MultipartRequest('PATCH', url);
      request.fields.addAll({'status': 'VERIFIED'});

      http.StreamedResponse response = await request.send();

      // *Verify statusCode: 200
      if (response.statusCode == 200) {
        var responseData = await response.stream.bytesToString();
        var data = json.decode(responseData);

        Get.snackbar(
          'Info',
          "${data['data']['status']}, ${data['message']}",
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 2),
        );

        print('Verify -> Success');

        isAuth.value = true;
        isVerified.value = true;

        // *Verify statusCode: 500
      } else if (response.statusCode == 500) {
        var responseData = await response.stream.bytesToString();
        var data = json.decode(responseData);

        Get.snackbar(
          'Error',
          data['message'] ?? data['error'],
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 2),
        );

        print('Verify -> Failed');

        isVerified.value = false;
      }
    } catch (e) {
      print(e);
    }
  }
}
