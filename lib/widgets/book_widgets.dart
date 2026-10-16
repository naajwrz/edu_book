import 'package:flutter/material.dart';
import '../models/book.dart';
import '../pages/detail_page.dart';
import '../store/library_store.dart';

const kPrimary = Color(0xFF173D39);
const kAccent = Color(0xFFE8AA4E);
const kBg = Color(0xFFF3F6F4);
const kAvailable = Color(0xFF26855D);
const kBorrowed = Color(0xFFC25E55);

class BookCover extends StatelessWidget {
  final Book book;
  final double width, height;
  final double borderRadius;
  const BookCover({
    super.key,
    required this.book,
    this.width = 60,
    this.height = 90,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        book.coverUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return _CoverPlaceholder(book: book, width: width, height: height);
        },
        errorBuilder: (_, __, ___) =>
            _CoverPlaceholder(book: book, width: width, height: height),
      ),
    );
  }
}

class _CoverPlaceholder extends StatelessWidget {
  const _CoverPlaceholder({
    required this.book,
    required this.width,
    required this.height,
  });

  final Book book;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(9),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF245B52), Color(0xFF112F35)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.auto_stories_rounded,
            color: Colors.white70,
            size: 22,
          ),
          const SizedBox(height: 8),
          Text(
            book.title,
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class StatusChip extends StatelessWidget {
  final bool available;
  const StatusChip({super.key, required this.available});

  @override
  Widget build(BuildContext context) {
    final color = available ? kAvailable : kBorrowed;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        available ? 'Tersedia' : 'Dipinjam',
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book;
  const BookTile({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final store = LibraryStore.instance;
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: kPrimary.withValues(alpha: 0.06)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (_) => DetailPage(book: book)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              BookCover(book: book, width: 68, height: 92, borderRadius: 12),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.genre.toUpperCase(),
                      style: const TextStyle(
                        color: kPrimary,
                        fontSize: 9,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      book.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color(0xFF1D2927),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      book.author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 16,
                          color: kAccent,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          book.rating.toStringAsFixed(1),
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 10),
                        StatusChip(available: book.available),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 4),
              ListenableBuilder(
                listenable: store,
                builder: (context, _) => IconButton(
                  visualDensity: VisualDensity.compact,
                  tooltip: store.isBookmarked(book)
                      ? 'Hapus dari bookmark'
                      : 'Simpan ke bookmark',
                  onPressed: () => store.toggleBookmark(book),
                  icon: Icon(
                    store.isBookmarked(book)
                        ? Icons.bookmark_rounded
                        : Icons.bookmark_border_rounded,
                    color: store.isBookmarked(book) ? kPrimary : Colors.black38,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
