import 'package:booklyapp/featuers/home/data/model/books/books.dart';
import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllbooksCubit extends Cubit<AllbooksState> {
  AllbooksCubit(this.homeRepo) : super(intialstate());
  final HomeRepo homeRepo;

  getAllbooks() async {
    emit(lodingstate());
      var result = await homeRepo.fetchAllBooks();
    result.fold((error) {
      emit(errorstate(error.toString()));
    }, (books) {
      emit(successstate(books as List<Books>));
    });
  }
}
