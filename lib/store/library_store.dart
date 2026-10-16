import 'package:flutter/foundation.dart';
import '../data/books_data.dart';
import '../models/book.dart';

class LibraryStore extends ChangeNotifier {
  LibraryStore._();
  static final LibraryStore instance = LibraryStore._();

  final List<Book> books = dummyBooks;
  final Set<String> _bookmarks = {};

  List<Book> byGenre(String genre) =>
      books.where((b) => b.genre == genre).toList();

  List<Book> get popular {
    final list = [...books]..sort((a, b) => b.rating.compareTo(a.rating));
    return list.take(5).toList();
  }

  List<Book> get bookmarked =>
      books.where((b) => _bookmarks.contains(b.id)).toList();

  bool isBookmarked(Book b) => _bookmarks.contains(b.id);

  void toggleBookmark(Book b) {
    isBookmarked(b) ? _bookmarks.remove(b.id) : _bookmarks.add(b.id);
    notifyListeners();
  }

  // Pinjam (jika tersedia) / kembalikan (jika sedang dipinjam)
  void toggleBorrow(Book b) {
    b.available = !b.available;
    notifyListeners();
  }
}
