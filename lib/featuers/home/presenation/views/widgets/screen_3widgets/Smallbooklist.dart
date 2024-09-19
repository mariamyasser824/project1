import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_cubit.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/BestSeller_state.dart';
import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/Bestseller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../../core/utils/assets.dart';

class Smallbooklist extends StatelessWidget {
  Smallbooklist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllbooksCubit,AllbooksState >(builder: (context, state) {
      if (state is lodingstate) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is successstate) {
        print(state.books.length);
        return SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * .14,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:Image.network("${state.books[index].volumeInfo?.imageLinks?.thumbnail}"),
              );
            },
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,

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
