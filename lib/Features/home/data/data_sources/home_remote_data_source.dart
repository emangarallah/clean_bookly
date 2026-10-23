import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/core/utils/api_service.dart';


abstract class HomeRemoteDtaSource{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewesdBooks();
}

class HomeRemoteDataSourceImpl extends  HomeRemoteDtaSource  {
  ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {

   var data = await apiService.get(endPoint:'volumes?Filtering=free-ebooks&q=programming');
   List<BookEntity> books = getBooksList(data);


   return books;

  }
  List<BookEntity> getBooksList(Map<String,dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewesdBooks() {
    // TODO: implement fetchNewesdBooks
    throw UnimplementedError();
  }


}