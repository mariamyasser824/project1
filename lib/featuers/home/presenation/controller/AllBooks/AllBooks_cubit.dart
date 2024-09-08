import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllbooksCubit extends Cubit<AllbooksState> {
  AllbooksCubit(super.initialState, this.homeRepo);
  final HomeRepo homeRepo;
  getAllbooks() async {
    emit(lodingstate());
    var result = await homeRepo.featchAllBooks();
    result.fold((error) {
      emit(errorstate(error.toString()));
    }, (books) {
      emit(successstate(books));
    });
  }
}
