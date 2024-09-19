import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/BestSeller_state.dart';
import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/Bestseller_cubit.dart';
import 'package:booklyapp/featuers/home/presenation/views/widgets/screen_2widgets/bestselleritem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Bestsellerlist extends StatelessWidget {
  const Bestsellerlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestsellerCubit,BestsellerState>(
        builder: (context,state) {
          if(state is Bestsellersuccessstate){
            return ListView.builder(
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Bestselleritem( book: state.books[index]),
                );
              },
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
            //  physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            );
          }
          else if (state is Bestsellererrorstate){
          return Center(child: Text('Error: ${state.error}'));
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        }
    );
  }
}