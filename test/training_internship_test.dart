import 'package:flutter_test/flutter_test.dart';
import 'package:hiremi_t5/screens/training_internship_screen.dart';
import 'package:flutter/material.dart';

void main() {
  group('TrainingInternshipScreen Widget Tests', () {
    testWidgets('displays the app bar title correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Training + Internship'), findsOneWidget);
    });

    testWidgets('displays the notification icon with badge', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.byIcon(Icons.notifications_outlined), findsOneWidget);
      expect(find.text('3'), findsOneWidget);
    });

    testWidgets('displays the custom banner', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Training + internship'), findsOneWidget);
    });

    testWidgets('displays the select programs section', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Select Programs'), findsOneWidget);
      expect(find.text('Mentorship'), findsOneWidget);
    });

    testWidgets('displays the custom course profile', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Addon for College Students'), findsOneWidget);
      expect(find.text('Not Active Program'), findsOneWidget);
    });

    testWidgets('displays the reasons to choose Hiremi Training + Internship', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Why Choose Hiremi Training + Internship?'), findsOneWidget);
      expect(find.text("The Advantages of Hiremi 360's Mentorship Program"), findsOneWidget);
    });

    testWidgets('displays the list of programs', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Personalized Guidance'), findsOneWidget);
      expect(find.text('Industry Insights'), findsOneWidget);
      expect(find.text('Skill Development'), findsOneWidget);
      expect(find.text('Networking Opportunity'), findsOneWidget);
      expect(find.text('Confidence Building'), findsOneWidget);
      expect(find.text('Guaranteed Internship'), findsOneWidget);
    });

    testWidgets('displays the enroll now button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Enroll Now'), findsOneWidget);
    });

    testWidgets('displays the enquire now button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      expect(find.text('Enquire Now'), findsOneWidget);
    });

    testWidgets('updates currentIndex on bottom navigation bar tap', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TrainingInternshipScreen()));
      await tester.tap(find.byIcon(Icons.home).last);
      await tester.pump();
      expect(find.byIcon(Icons.home), findsNWidgets(2));
    });
  });
}