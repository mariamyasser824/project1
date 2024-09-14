import '../../../data/model/books/books.dart';

abstract class AllbooksState {}

class intialstate extends AllbooksState {}

class lodingstate extends AllbooksState {}

class successstate extends AllbooksState {
  final List<Books> books;

  successstate(this.books);
}

class errorstate extends AllbooksState {
  final String error;

  errorstate(this.error);
}
