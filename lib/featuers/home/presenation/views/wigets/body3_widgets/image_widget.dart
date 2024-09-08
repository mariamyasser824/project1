import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162.w,
      height: 243.h,
      child: const Image(
        image: NetworkImage("images/img_1.png"),
      ),
    );
  }
}
