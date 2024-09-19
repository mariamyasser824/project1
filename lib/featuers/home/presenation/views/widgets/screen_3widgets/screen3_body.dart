import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_2widgets/allbookslist.dart';
import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_3widgets/Smallbooklist.dart';
import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_3widgets/price_widget.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/model/Book/book/book.dart';
import '../screen_2widgets/bookreat.dart';
import 'BookDetails.dart';
class screen3_Body extends StatelessWidget {
  const screen3_Body({super.key, required this.book});
final Book book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [

                bookdetails(book: book),
                const SizedBox(
                  height: 16,
                ),
                const BookRate(),
                const SizedBox(height: 37),
               price_widget(),
                const Expanded(
                    child: SizedBox(
                      height: 50,
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 16,
                ),
              Smallbooklist()  ,
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}