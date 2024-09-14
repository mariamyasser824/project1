import 'package:booklyapp/featuers/home/presenation/views/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';

class splashwidget extends StatefulWidget {
  const splashwidget({super.key});

  @override
  State<splashwidget> createState() => _splashwidgetState();
}

class _splashwidgetState extends State<splashwidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> a;
  late Animation<Offset> b;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    a = Tween(begin: const Offset(0, 0), end: const Offset(0, 8))
        .animate(animationController);

    b = Tween(begin: const Offset(0, 15), end: const Offset(0, 10))
        .animate(animationController);
    animationController.forward();

    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push(Approuter.homeViewRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SlideTransition(
        position: a,
        child: const Center(
            child: Image(
          image: NetworkImage("images/img.png"),
          fit: BoxFit.fill,
        )),
      ),
      SlideTransition(
          position: b,
          child: const Text(
            'Read Free Books',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          )),
    ]);
  }
}
