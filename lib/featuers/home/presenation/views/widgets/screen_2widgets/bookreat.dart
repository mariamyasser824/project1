import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
         SizedBox(
          width: 6.3.w,
        ),
        Text(
          '4.8',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
         SizedBox(
          width: 9.w,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle16.copyWith(
              color: const Color(
                0xff707070,
              ),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}