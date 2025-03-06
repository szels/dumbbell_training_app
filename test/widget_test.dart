// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:dumbbell_training_app/main.dart';

void main() {
  testWidgets('30-Day Dumbbell Challenge app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app title is present
    expect(find.text('30-Day Dumbbell Challenge'), findsOneWidget);

    // Verify that the welcome message is present
    expect(find.text('Welcome to Your 30-Day Challenge!'), findsOneWidget);

    // Verify that the progress indicator shows the correct initial value
    expect(find.text('Your Progress: 0/30'), findsOneWidget);
  });
}
