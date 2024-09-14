import 'package:booklyapp/core/error/error.dart';
import 'package:booklyapp/featuers/home/data/model/Book/book/book.dart';

import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchAllBooks();
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
}
