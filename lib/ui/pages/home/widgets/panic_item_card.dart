// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siap_polisi_mitra_app/routes/route_name.dart';

class PanicItemCard extends StatelessWidget {
  const PanicItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(RouteName.detailPanicButtonPage);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 20, 5),
        child: Stack(
          children: [
            Card(
              elevation: 5,
              child: SizedBox(
                height: 65,
                child: Row(
                  children: [
                    // * Description Item Card
                    Container(
                      padding: EdgeInsets.fromLTRB(55, 5, 10, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PANIC BUTTON',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            'Polisi membutuhkan bantuan anda',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1),
                          Row(
                            children: [
                              Text(
                                '13-10-21 04:00:18 WIB',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Polisi - 88070508',
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // *Status Pengaduan
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RichText(
                          text: TextSpan(
                              text: 'Status: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Aktif',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),

                    // *Icon Jarak
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: 30,
                          image: AssetImage(
                              'assets/images/homepage/Icon Map.png'),
                        ),
                        Text(
                          '5 km',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // *Icon Category
            Transform.translate(
              offset: Offset(-155, 5),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/homepage/Icon Bantuan RED.png',
                    ),
                  ),
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.grey, spreadRadius: 2)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}