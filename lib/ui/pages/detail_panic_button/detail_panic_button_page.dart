// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:siap_polisi_mitra_app/routes/route_name.dart';

class DetailPanicButtonPage extends StatelessWidget {
  const DetailPanicButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Set<Marker> _markers = {};
    final LatLng _currentPosition =
        LatLng(-6.268341042897435, 106.81257081134301);

    _markers.add(
      Marker(
        markerId: MarkerId('-6.268341042897435, 106.81257081134301'),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    return Scaffold(
      // *AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
        title: Text('Panic Button'),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 8,
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: _currentPosition,
              zoom: 18.0,
            ),
            markers: _markers,
          ),
          // *Detail Box
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.9,
              child: DraggableScrollableSheet(
                initialChildSize: 0.42,
                minChildSize: 0.42,
                // maxChildSize: 0.4,
                builder: (BuildContext context, myscrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 7),
                        )
                      ],
                    ),
                    child: ListView(
                      controller: myscrollController,
                      children: [
                        Divider(
                          height: 20,
                          thickness: 4,
                          indent: 150,
                          endIndent: 150,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // *Icon & Description
                              SizedBox(
                                width: 175,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // *Icon
                                        Image(
                                          height: 30,
                                          image: AssetImage(
                                              'assets/images/login/Icon NRP.png'),
                                        ),
                                        SizedBox(width: 5),
                                        // *NIK
                                        Text('3671133112900002'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // *Icon
                                        Image(
                                          height: 30,
                                          image: AssetImage(
                                              'assets/images/login/Icon Nama.png'),
                                        ),
                                        SizedBox(width: 5),
                                        // *Nama
                                        Text('Andre Irawan'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // *Icon
                                        Image(
                                          height: 30,
                                          image: AssetImage(
                                              'assets/images/homepage/Icon Alamat.png'),
                                        ),
                                        SizedBox(width: 5),
                                        // *Alamat
                                        SizedBox(
                                          width: 140,
                                          child: Text(
                                            'Kp, Benda Jayanti, Kemang Jaya, Jakarta Selatan',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // *Icon
                                        Image(
                                          height: 30,
                                          image: AssetImage(
                                              'assets/images/homepage/Icon Telepon.png'),
                                        ),
                                        SizedBox(width: 5),
                                        // *No HP
                                        Text('+628999929293'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // *Icon
                                        Image(
                                          height: 30,
                                          image: AssetImage(
                                              'assets/images/homepage/Icon Jarak.png'),
                                        ),
                                        SizedBox(width: 5),
                                        // *Jarak
                                        Text('5 Km'),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // *Icon
                                        Image(
                                          height: 30,
                                          image: AssetImage(
                                              'assets/images/homepage/Icon Estimasi Waktu.png'),
                                        ),
                                        SizedBox(width: 5),
                                        // *Estimasi Waktu
                                        Text('15 Menit'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // *Foto
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(20),
                                  padding: EdgeInsets.all(5),
                                  dashPattern: [6, 3, 2, 3],
                                  color: Colors.grey.withOpacity(0.5),
                                  strokeWidth: 1,
                                  child: Container(
                                    height: 170,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/homepage/Foto Korban.jpg',
                                        ),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      // *Tombol Konfirmasi
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        margin: const EdgeInsets.only(bottom: 20),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 65,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
          child: ElevatedButton(
            child: Text('KONFIRMASI'),
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
              Get.toNamed(RouteName.unlockPage);
            },
          ),
        ),
      ),
    );
  }
}
