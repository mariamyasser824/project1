import '../../../data/model/books/books.dart';

abstract class BestsellerState {}

class intialstate extends BestsellerState {}

class lodingstate extends BestsellerState {}

class successstate extends BestsellerState {
  final List<Books> books;

  successstate(this.books);
}

class errorstate extends BestsellerState {
  final String error;

  errorstate(this.error);
}
