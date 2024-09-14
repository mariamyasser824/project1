import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_cubit.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/screen2_widgets/body_2.dart';
import 'package:booklyapp/featuers/home/presenation/views/wigets/screen2_widgets/widget_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Blocbuilder extends StatelessWidget {
  const Blocbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllbooksCubit, AllbooksState>(
      builder: (context, state) {
        AllbooksCubit cubit = BlocProvider.of<AllbooksCubit>(context);
    
        if (state is lodingstate) {
          return Center(child: CircularProgressIndicator());
        } else if (state is successstate) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Text(
                  "${state.books[index].volumeInfo!.authors![index].characters.first}");
            },
          );
        } else if (state is errorstate) {
          return Center(child: Text('Error: ${state.error}',style: TextStyle(color: Colors.white),));
        }
        return Container(); // Fallback for any other state
      },
    );
  }
}
