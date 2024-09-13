import 'package:booklyapp/featuers/home/presenation/views/wigets/body3_widgets/image_widget.dart';
import 'package:flutter/material.dart';

class Body3 extends StatelessWidget {
  const Body3({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text("12505321"),
        ),
        SliverToBoxAdapter(
            child: SizedBox(
          width: 250,
          child: ImageWidget(),
        ))
      ],
    );
  }
}
