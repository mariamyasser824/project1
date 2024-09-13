
import 'package:booklyapp/core/error/error.dart';
import 'package:booklyapp/core/network/api_service.dart';
import 'package:booklyapp/featuers/home/data/model/books/books.dart';
import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  
  @override
  Future<Either<Errorserver, List<Books>>> fetchAllBooks()async {
    try {
      var data =  await apiService.get(
          endPoint:'v1/volumes?q=subject : programming&Filtering=free_ebooks'
      );
      List<Books>books = [];
      for(var i in data['items']){
        books.add(Books.fromJson(i));
      }
      return Right(books);
    } catch (e) {
    
     return Left(Errorserver(e.toString()));
    }
  }

    @override
  Future<Either<Errorserver, List<Books>>>  fetchNewestBooks() async {
   try {
     var data =  await apiService.get(
         endPoint:'v1/volumes?q=subject : programming&Filtering=free_ebooks&Sorting=newest'
     );
     List<Books>books = [];
     for(var i in data['items']){
       books.add(Books.fromJson(i));
     }
     return Right(books);
   } catch (e) {
    

     return Left(Errorserver(e.toString()));
   }
  }

}