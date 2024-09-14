import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/BestSeller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestsellerCubit extends Cubit<BestsellerState> {
  BestsellerCubit(this.homeRepo) : super(Bestsellerintialstate());
  final HomeRepo homeRepo;
  getBestseller() async {
    emit(Bestsellerlodingstate());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(Bestsellererrorstate(failure.errorMessage));
    }, (books) {
      emit(Bestsellersuccessstate(books));
    });
  }
}
