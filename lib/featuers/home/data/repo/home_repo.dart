
import 'package:booklyapp/core/error/error.dart';
import 'package:booklyapp/featuers/home/data/model/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Errorserver,List<Books>>>fetchAllBooks();
Future<Either<Errorserver,List<Books>>>fetchNewestBooks();
}