import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class screen3 extends StatelessWidget {
  screen3({super.key});

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        backgroundColor: const Color(0xFF100B20),
        appBar: AppBar(
          backgroundColor: const Color(0xFF100B20),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 28,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 28,
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
        body: null);
  }
}
