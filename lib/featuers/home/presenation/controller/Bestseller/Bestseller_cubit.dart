import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/BestSeller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestsellerCubit extends Cubit<BestsellerState> {
BestsellerCubit(this.homeRepo) : super(intialstate1());
  final HomeRepo homeRepo;
  getBestseller() async {
    emit(lodingstate1());
    var result = await homeRepo. fetchNewestBooks();
    result.fold((error) {
      emit(errorstate1(error.toString()));
    }, (books) {
      emit(successstate1(books));
    });
  }
}
