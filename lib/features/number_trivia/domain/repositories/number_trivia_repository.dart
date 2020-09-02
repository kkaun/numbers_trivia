import 'package:dartz/dartz.dart';
import 'package:numbers_trivia/core/db/number_trivia_db.dart';
import 'package:numbers_trivia/core/error/failures.dart';
import 'package:numbers_trivia/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();

  Future<Either<Failure, List<FavoriteTrivia>>> getAllFavoriteNumberTrivias();
  Future<Either<Failure, NumberTrivia>> insertFavoriteNumberTrivia(NumberTrivia trivia);
  Future<Either<Failure, void>> deleteFavoriteNumberTrivia(FavoriteTrivia trivia);
}
