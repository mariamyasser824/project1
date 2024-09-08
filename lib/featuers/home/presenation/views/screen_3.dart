import 'package:booklyapp/featuers/home/presenation/views/wigets/body3.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/body3_widgets/details_widget.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/body3_widgets/image_widget.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/body3_widgets/scroll_widget.dart';
import 'package:flutter/material.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/body_2.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/widget_2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class screen3 extends StatelessWidget {
  screen3({super.key});
  List l = [
    "images/img_1.png",
    "images/img_2.png",
    "images/img_3.png",
    "images/img_1.png",
    "images/img_2.png",
    "images/img_3.png",
    "images/img_2.png",
    "images/img_1.png",
    "images/img_3.png",
  ];
  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        backgroundColor: const Color(0xFF100B20),
        appBar: AppBar(
          backgroundColor: const Color(0xFF100B20),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
          const ImageWidget(),
             const DetailsWidget(),
             
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            child: Container(
                              width: 150.w,
                              height: 48.h,
                              color: Colors.white,
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "19.99",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.euro,
                                      color: Colors.black,
                                      size: 13,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            child: Container(
                              width: 150.w,
                              height: 48.h,
                              color: const Color(0xFFEF8262),
                              child: const Center(
                                  child: Text(
                                "Free preview",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )),
                            ),
                          )
                        ],
                      ),
                  ),
                  
              
          
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "You can also like ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Expanded(child: ScrollWidget())
          ],
        ));
  }
}
