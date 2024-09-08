import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class body_2 extends StatefulWidget {
  const body_2({super.key});

  @override
  State<body_2> createState() => _body_2State();
}

class _body_2State extends State<body_2> {
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
      height: 224.h,
      width: 150.w,
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
              width: 129.w,
              height: 193.h,
              child: Center(
                  child: Image(
                image: NetworkImage("${l[itemIndex]}"),
              )),
            ),
          );
        },
      ),
    );

    //   Container(
    //   width: 75,height: 16.11,
    //   child: Center(child: Image(image: NetworkImage("${l[index]}"),)),
    // );
    // Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 32),
    //   child: Align(
    //     child: ConstrainedBox(
    //       constraints: BoxConstraints(minWidth: 240, maxWidth: 600),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           IconButton(
    //             iconSize: 48,
    //             icon: Icon(Icons.skip_previous),
    //             onPressed: () {
    //               _sliderKey.currentState.previousPage();
    //             },
    //           ),
    //           IconButton(
    //             iconSize: 64,
    //             icon: Icon(
    //               _isPlaying
    //                   ? Icons.pause_circle_outline
    //                   : Icons.play_circle_outline,
    //             ),
    //             onPressed: () {
    //               setState(
    //                     () {
    //                   _isPlaying = !_isPlaying;
    //                   _sliderKey.currentState.setPlaying(_isPlaying);
    //                 },
    //               );
    //             },
    //           ),
    //           IconButton(
    //             iconSize: 48,
    //             icon: Icon(Icons.skip_next),
    //             onPressed: () {
    //               _sliderKey.currentState.nextPage();
    //             },
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
  }
}
