import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // fetchTopWatchedMovies()
  // fetchFeatureMovies()
  Future<Either<Failure , List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure , List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure , List<BookModel>>> fetchSimilarBooks({required String category});



}