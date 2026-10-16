import 'package:flutter/material.dart';

import '../store/library_store.dart';
import '../widgets/book_widgets.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = LibraryStore.instance;
    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(
        title: const Text('Bookmark Saya'),
        backgroundColor: kBg,
        foregroundColor: kPrimary,
      ),
      body: ListenableBuilder(
        listenable: store,
        builder: (context, _) {
          final books = store.bookmarked;
          if (books.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  'Belum ada buku yang disimpan.\nTambahkan bookmark dari halaman detail buku.',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: books.length,
            itemBuilder: (context, index) => BookTile(book: books[index]),
          );
        },
      ),
    );
  }
}
