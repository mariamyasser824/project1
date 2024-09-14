import 'package:booklyapp/featuers/home/data/model/Book/book/book.dart';

abstract class AllbooksState {}

class intialstate extends AllbooksState {}

class lodingstate extends AllbooksState {}

class successstate extends AllbooksState {
  final List<Book> books;

  successstate(this.books);
}

class errorstate extends AllbooksState {
  final String error;

  errorstate(this.error);
}
