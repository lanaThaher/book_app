import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repo/home_repo.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/core/utils/functions/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplement({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:cooking',
      );
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var data = await apiServices.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
