import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/featuers/home/data/model/Book/book/book.dart';
import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_2widgets/BookShape.dart';
import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_2widgets/bookreat.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class Bestselleritem extends StatelessWidget {
  Bestselleritem({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(Approuter.bookDetailsViewRoute,extra: book);
      },
      child: SizedBox(
        height: 98.h,
        width: 300.w,
        child: Row(
          children: [
            BookShape(
                imageUrl:
                    "${book.volumeInfo?.imageLinks?.thumbnail
                    }")
                     ,const SizedBox(
              width: 30,

            ),
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width:200.w ,
                  child:Text("${book.volumeInfo!.title}",style:Styles.textStyle14.copyWith(color: Colors.grey,fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,) ,

                ),
                  const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text("19.99",style:Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                      ,color: Colors.white,
                      fontSize: 24.sp

                    )),
                    Icon(Icons.euro_symbol,color: Colors.white,size: 18.sp,)
                      ],
                    )
                  , SizedBox(
                      width: 25.w,
                    ),
                    const BookRate(),
                  ],
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
