import 'package:booklyapp/featuers/home/data/model/Book/book/book.dart';
import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_3widgets/screen3_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class screen3 extends StatelessWidget {
  const  screen3({super.key, required this.book});
final Book book;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xFF100B20),
        appBar: AppBar(
          backgroundColor: const Color(0xFF100B20),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

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
        body: screen3_Body(book: book,));
  }
}
