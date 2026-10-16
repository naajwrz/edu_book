import 'package:flutter/material.dart';
import '../store/library_store.dart';
import '../widgets/book_widgets.dart';

class ListPage extends StatelessWidget {
  final String genre;
  const ListPage({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    final store = LibraryStore.instance;
    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(
        title: Text('Daftar Buku $genre'),
        backgroundColor: kBg,
        foregroundColor: kPrimary,
      ),
      body: ListenableBuilder(
        listenable: store,
        builder: (_, __) {
          final books = store.byGenre(genre);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 14),
                child: Text(
                  '${books.length} buku dalam kategori ini',
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                  itemCount: books.length,
                  itemBuilder: (_, i) => BookTile(book: books[i]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
