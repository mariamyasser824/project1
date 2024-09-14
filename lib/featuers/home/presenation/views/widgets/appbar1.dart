import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class appbar1 extends StatelessWidget {
  const appbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44, bottom: 15, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 75.w,
            height: 36.h,
            child: Center(
                child: Image(
              image: NetworkImage("images/img.png"),
              fit: BoxFit.fill,
            )),
          ),
          SizedBox(
              width: 25.w,
              height: 25.h,
              child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_sharp,
                        color: Colors.white,
                        size: 28,
                      ))))
        ],
      ),
    );
  }
}
