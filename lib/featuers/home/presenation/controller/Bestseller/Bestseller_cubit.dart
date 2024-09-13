import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestsellerCubit extends Cubit<BestsellerState> {
  BestsellerCubit(super.initialState, this.homeRepo);
  final HomeRepo homeRepo;
  getBestseller() async {
    emit(lodingstate());
    var result = await homeRepo. fetchNewestBooks();
    result.fold((error) {
      emit(errorstate(error.toString()));
    }, (books) {
      emit(successstate(books));
    });
  }
}
