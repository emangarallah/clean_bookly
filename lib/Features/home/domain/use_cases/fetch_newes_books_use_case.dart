import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entities.dart';
import '../repos/home_repo.dart';

class FetchNewesBooksUseCase extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchNewesBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
    return await homeRepo.fetchNewesdBooks();
  }

}