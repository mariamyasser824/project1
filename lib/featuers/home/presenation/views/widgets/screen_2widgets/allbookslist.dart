import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_cubit.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Allbookslist extends StatelessWidget {
  const Allbookslist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllbooksCubit, AllbooksState>(builder: (context, state) {
      if (state is lodingstate) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is successstate) {
        return SizedBox(
          width: 150.w,
          height: 224.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 150.w,
                  height: 224.h,
                  child: Image(
                    image: NetworkImage(
                        "${state.books[index].volumeInfo?.imageLinks?.thumbnail}"),
                  ),
                ),
              );
            },
          ),
        );
      } else if (state is errorstate) {
        print(state.error);
        return Center(child: Text('Error: ${state.error}'));
      }
      return Container();
    });
  }
}
