import 'package:flutter/material.dart';

class appbar1 extends StatelessWidget {
  const appbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: 75,
            height: 16.11,
            child: Center(
                child: Image(
              image: NetworkImage("images/img.png"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: 25,
              height: 25,
              child: Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_sharp,
                        color: Colors.white,
                      )))),
        )
      ],
    );
  }
}
