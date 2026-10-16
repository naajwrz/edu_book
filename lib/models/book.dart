class Book {
  final String id, title, author, genre, synopsis, authorBio, publisher, isbn;
  final double rating;
  final int pages, year;
  bool available;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.genre,
    required this.synopsis,
    required this.authorBio,
    required this.publisher,
    required this.isbn,
    required this.rating,
    required this.pages,
    required this.year,
    this.available = true,
  });

  // Siap dipakai saat data diganti dari API (JSON).
  factory Book.fromJson(Map<String, dynamic> j) => Book(
    id: j['id'],
    title: j['title'],
    author: j['author'],
    genre: j['genre'],
    synopsis: j['synopsis'],
    authorBio: j['authorBio'],
    publisher: j['publisher'],
    isbn: j['isbn'],
    rating: (j['rating'] as num).toDouble(),
    pages: j['pages'],
    year: j['year'],
    available: j['available'] ?? true,
  );

  // Cover diambil dari Open Library berdasarkan ISBN.
  String get coverUrl =>
      'https://covers.openlibrary.org/b/isbn/$isbn-L.jpg?default=false';
}
