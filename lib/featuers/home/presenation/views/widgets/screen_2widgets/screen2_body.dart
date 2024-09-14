import 'package:booklyapp/featuers/home/presenation/views/widgets/appbar1.dart';
import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_2widgets/allbookslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen2Body extends StatelessWidget {
  const Screen2Body({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: appbar1(),
        ),
        Allbookslist()
      ]))
    ]);
  }
}
