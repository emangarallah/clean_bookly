import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/book_entities.dart';

class FetcFeaturedBooksUseCase {
  final HomeRepo homeRepo;
  FetcFeaturedBooksUseCase(this.homeRepo);
  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks(){

    return homeRepo.fetchFeaturedBooks();
  }


}