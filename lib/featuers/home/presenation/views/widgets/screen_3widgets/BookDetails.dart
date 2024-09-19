import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/BestSeller_state.dart';
import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/Bestseller_cubit.dart';
import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/model/Book/book/book.dart';
import '../screen_2widgets/BookShape.dart';
class bookdetails extends StatelessWidget {
  const bookdetails({super.key, required this.book});
  final Book book ;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<BestsellerCubit,BestsellerState>(
      builder: (context, state) {
        if(state is Bestsellersuccessstate){
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .20),
                child:   BookShape(imageUrl:'${book.volumeInfo?.imageLinks?.thumbnail}??${AssetsData.nullImage}'),
              ),
              SizedBox(
                height: 43.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "${book.volumeInfo?.title}",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            SizedBox(
                height: 6.h,
              ),
              Text(
                "${book.volumeInfo?.authors![0]}",
                style:
                Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          );
        }
        else if(state is Bestsellererrorstate){
          return Center(child: Text('Error: ${state.error}'));
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
