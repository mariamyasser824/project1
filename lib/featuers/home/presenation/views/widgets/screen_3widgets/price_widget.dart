import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
class price_widget extends StatelessWidget {
  const price_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
        borderRadius: BorderRadius.only(topLeft:Radius.circular(38),bottomLeft:Radius.circular(38)  ),
          child: Container(
            width: 150.w,
            height: 48.h,
            color: Colors.white,
            child:  Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("19.99",style:Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold
                        ,color:  Colors.black,
                        fontSize: 18.sp

                    )),
                  ),
                  Center(child: Icon(Icons.euro_symbol,color: Colors.black,size: 15.sp,))
                ],
              ),
            ) ,


          ),

        ),
    ClipRRect(
    borderRadius: BorderRadius.only(topRight:Radius.circular(38),bottomRight:Radius.circular(38)  ),
    child: Container(
    width: 150.w,
    height: 48.h,
    color:Color(0xFFEF8262
    ),

      child: Center(
        child: Text("Free preview",style:Styles.textStyle20.copyWith(

        color: Colors.white,
        fontSize: 16.sp

        )),
      ),
    ),
     )
    ]);
  }
}

