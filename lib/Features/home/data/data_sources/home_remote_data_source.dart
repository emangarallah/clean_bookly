import 'package:bookly/Features/home/domain/entities/book_entities.dart';


abstract class HomeRemoteDtaSource{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewesdBooks();
}

class HomeRemoteDataSourceImpl extends  HomeRemoteDtaSource  {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewesdBooks() {
    // TODO: implement fetchNewesdBooks
    throw UnimplementedError();
  }


}