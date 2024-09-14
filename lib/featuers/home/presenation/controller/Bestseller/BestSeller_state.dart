import '../../../data/model/Book/book/book.dart';

abstract class BestsellerState {}

class Bestsellerintialstate extends BestsellerState {}

class Bestsellerlodingstate extends BestsellerState {}

class Bestsellersuccessstate extends BestsellerState {
  final List<Book> books;

  Bestsellersuccessstate(this.books);
}

class Bestsellererrorstate extends BestsellerState {
  final String error;

  Bestsellererrorstate(this.error);
}
