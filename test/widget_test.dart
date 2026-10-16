import 'package:flutter_test/flutter_test.dart';

import 'package:edu_book/data/books_data.dart';
import 'package:edu_book/main.dart';

void main() {
  test('includes a larger, balanced dummy catalog with unique IDs', () {
    expect(dummyBooks, hasLength(40));
    expect(dummyBooks.map((book) => book.id).toSet(), hasLength(40));
    for (final genre in ['Fiksi', 'Non-Fiksi', 'Teknologi', 'Sejarah']) {
      expect(dummyBooks.where((book) => book.genre == genre), hasLength(10));
    }
  });

  testWidgets('shows the EduBook home screen and bookmark navigation', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const EduBookApp());

    expect(find.text('Halo, Pembaca! 👋'), findsOneWidget);

    await tester.tap(find.text('Bookmark'));
    await tester.pumpAndSettle();

    expect(find.text('Bookmark Saya'), findsOneWidget);
    expect(find.textContaining('Belum ada buku yang disimpan'), findsOneWidget);
  });
}
