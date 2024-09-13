import 'package:booklyapp/featuers/home/presenation/views/wigets/appbar1.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/screen2_widgets/blocbuilder.dart';



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
        body: Blocbuilder() );
  }
}
