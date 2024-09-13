import '../../../data/model/books/books.dart';

abstract class BestsellerState {}

class intialstate1 extends BestsellerState {}

class lodingstate1 extends BestsellerState {}

class successstate1 extends BestsellerState {
  final List<Books> books;

  successstate1(this.books);
}

class errorstate1 extends BestsellerState {
  final String error;

  errorstate1(this.error);
}
