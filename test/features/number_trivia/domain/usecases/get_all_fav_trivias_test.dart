import 'package:flutter_test/flutter_test.dart';
import 'package:numbers_trivia/features/number_trivia/domain/usecases/get_all_fav_trivias.dart';
import '../repositories/number_trivia_repository.dart';

void main() {
  ObserveAllFavoriteTriviasUseCase usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = ObserveAllFavoriteTriviasUseCase(mockNumberTriviaRepository);
  });

  //TODO
}
