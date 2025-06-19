import 'package:floor/floor.dart';
import '../../domain/model/book_model.dart';

@dao
abstract class BookDAO {
  @Query('SELECT * FROM Book')
  Future<List<BookModel>> getAllBook();

  @insert
  Future<void> addBook(BookModel book);
}