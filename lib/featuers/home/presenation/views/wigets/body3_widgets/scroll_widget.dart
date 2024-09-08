import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({super.key});

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  final bool _isPlaying = false;
  late InfiniteScrollController controller;
  final GlobalKey _sliderKey = GlobalKey();
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
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = InfiniteScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InfiniteCarousel.builder(
        itemCount: l.length,
        itemExtent: 120,
        center: true,
        anchor: 0.0,
        velocityFactor: 0.2,
        onIndexChanged: (index) {},
        controller: controller,
        axisDirection: Axis.horizontal,
        loop: true,
        itemBuilder: (context, itemIndex, realIndex) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 70.w,
              height: 112.h,
              child: Center(
                  child: Image(
                image: NetworkImage("${l[itemIndex]}"),
              )),
            ),
          );
        },
      ),
    );
  }
}
