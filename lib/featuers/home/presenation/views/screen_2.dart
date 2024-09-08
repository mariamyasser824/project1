import 'package:booklyapp/featuers/home/presenation/views/wigets/appbar1.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/body_2.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/widget_2.dart';

import 'package:flutter/material.dart';

class screen_2 extends StatelessWidget {
  const screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF100B20),
        appBar: AppBar(
          backgroundColor: const Color(0xFF100B20),
          title: const appbar1(),
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 250, child: body_2()),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Best Seller",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: widget_2(),
            )
          ],
        ));
  }
}
