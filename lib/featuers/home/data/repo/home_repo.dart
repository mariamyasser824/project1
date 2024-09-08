
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Errorse,List<BookModel>>>fetchAllBooks();
  Future<Either<Failure,List<BookModel>>>fetchNewestBooks();
}