import 'package:flutter_test/flutter_test.dart';
import 'package:coderecet/main.dart';

void main() {
  testWidgets('HomePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final titleFinder = find.text('Sunlight Measurement App');
    expect(titleFinder, findsOneWidget);
  });
}