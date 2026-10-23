import 'package:hive/hive.dart';

import '../../../../constants.dart';
import '../../domain/entities/book_entities.dart';
import 'home_remote_data_source.dart';

class HomeLocalDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var box = Hive.box<BookEntity>(kNewestBox); // Make sure your constant name matches your newest box
    return box.values.toList();
  }
}