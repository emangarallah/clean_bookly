import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entities.dart';

class FetcFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetcFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
   return await homeRepo.fetchFeaturedBooks();
  }

  }






