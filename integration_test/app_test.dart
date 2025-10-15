import 'package:cash_flow/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';

void resetGetIt() {
  GetIt.instance.reset();
}

void testMain() {
  WidgetsFlutterBinding.ensureInitialized();
  app.main();
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    resetGetIt();
  });

  group('Cash Flow App Integration Tests', () {
    testWidgets('Complete transaction flow - Add, View, Update, Analytics', (
      WidgetTester tester,
    ) async {
      testMain();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 5));
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('money_type_field')), findsOneWidget);
      await tester.enterText(
        find.byKey(const Key('money_type_field')),
        'Salary',
      );
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Monthly Income',
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('amount_field')), '5000');
      await tester.pumpAndSettle();
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('insert_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
      expect(find.textContaining('Monthly Income'), findsWidgets);
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('money_type_field')), 'Food');
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Groceries',
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('amount_field')), '1500');
      await tester.pumpAndSettle();
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('withdraw_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('analytics_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('analytics_page')), findsOneWidget);
      expect(find.byKey(const Key('total_income')), findsOneWidget);
      expect(find.byKey(const Key('total_expense')), findsOneWidget);
      expect(find.byKey(const Key('balance')), findsOneWidget);
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
      await tester.drag(find.byType(ListView), const Offset(0, 300));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
    });

    testWidgets('Form validation test', (WidgetTester tester) async {
      testMain();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle();
      expect(find.text('Please fill all fields'), findsOneWidget);
    });

    testWidgets('Empty state test', (WidgetTester tester) async {
      testMain();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);

      // Check for empty state message
      expect(find.text('No transactions'), findsOneWidget);
    });

    testWidgets('Navigation flow test', (WidgetTester tester) async {
      testMain();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('analytics_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('analytics_page')), findsOneWidget);
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('money_type_field')), findsOneWidget);
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
    });

    testWidgets('Add income transaction test', (WidgetTester tester) async {
      testMain();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const Key('money_type_field')),
        'Bonus',
      );
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Work Bonus',
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('amount_field')), '2000');
      await tester.pumpAndSettle();
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('insert_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
      expect(find.textContaining('Work Bonus'), findsWidgets);
    });

    testWidgets('Add expense transaction test', (WidgetTester tester) async {
      testMain();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const Key('money_type_field')),
        'Transport',
      );
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Daily Commute',
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('amount_field')), '500');
      await tester.pumpAndSettle();
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('withdraw_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
      expect(find.textContaining('Daily Commute'), findsWidgets);
    });

    testWidgets('View analytics test', (WidgetTester tester) async {
      testMain();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key('analytics_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('analytics_page')), findsOneWidget);
      expect(find.byKey(const Key('total_income')), findsOneWidget);
      expect(find.byKey(const Key('total_expense')), findsOneWidget);
      expect(find.byKey(const Key('balance')), findsOneWidget);
      expect(find.byKey(const Key('monthly_analytics')), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
    });
  });
}
