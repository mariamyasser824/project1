import 'package:booklyapp/core/error/error.dart';
import 'package:booklyapp/core/network/api_service.dart';
import 'package:booklyapp/featuers/home/data/model/Book/book/book.dart';

import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Book>>> fetchAllBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              'v1/volumes?Filtering=free-ebooks&q=subject :flutter&maxResults=40');
      List<Book> books = [];
      for (var i in data['items']) {
        books.add(Book.fromJson(i));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        print(e);
        return Left(ServerFailure.fromDioException(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              'v1/volumes?Filtering=free-ebooks&q=flutter&Sorting&maxResults=40');
      List<Book> books = [];
      for (var i in data['items']) {
        books.add(Book.fromJson(i));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }
}
