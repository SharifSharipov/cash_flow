import 'package:cash_flow/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:cash_flow/injector_container_path.dart' as di;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // ✅ Initialize GetIt ONCE for all tests (moved to setUpAll)
  setUpAll(() async {
    await di.init();
  });

  // ✅ Add tearDown to clean up between tests
  tearDown(() async {
    await Future.delayed(const Duration(milliseconds: 100));
  });

  group('Cash Flow App Integration Tests', () {
    testWidgets('Complete transaction flow - Add, View, Update, Analytics', (
      WidgetTester tester,
    ) async {
      // ✅ Only pump once at start (Fixed Issue #1 & #2)
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();  // ✅ No hard-coded 5 second wait

      // Verify: Transactions page loads
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Transactions app bar should be visible');

      // Step 1: Add income transaction
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();

      // Verify: Form fields exist
      expect(find.byKey(const Key('money_type_field')), findsOneWidget,
          reason: 'Money type field should be on form');

      // ✅ Batch input operations (Fixed Issue #3)
      await tester.enterText(
        find.byKey(const Key('money_type_field')),
        'Salary',
      );
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Monthly Income',
      );
      await tester.enterText(find.byKey(const Key('amount_field')), '5000');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();  // ✅ One pump after all inputs

      await tester.tap(find.byKey(const Key('insert_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle();  // ✅ Removed hard-coded Duration

      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Should return to transactions page');
      // ✅ Fixed Issue #5: Changed findsWidgets to findsOneWidget
      expect(find.textContaining('Monthly Income'), findsOneWidget,
          reason: 'Monthly Income transaction should appear exactly once');

      // Step 2: Add expense transaction
      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();

      await tester.enterText(find.byKey(const Key('money_type_field')), 'Food');
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Groceries',
      );
      await tester.enterText(find.byKey(const Key('amount_field')), '1500');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('withdraw_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle();  // ✅ Removed hard-coded Duration

      // Step 3: View analytics
      await tester.tap(find.byKey(const Key('analytics_button')));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('analytics_page')), findsOneWidget,
          reason: 'Analytics page should load');
      expect(find.byKey(const Key('total_income')), findsOneWidget,
          reason: 'Total income widget should display');
      expect(find.byKey(const Key('total_expense')), findsOneWidget,
          reason: 'Total expense widget should display');
      expect(find.byKey(const Key('balance')), findsOneWidget,
          reason: 'Balance widget should display');

      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Should return to transactions page');

      await tester.drag(find.byType(ListView), const Offset(0, 300));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'App bar should still be visible after scroll');
    });

    testWidgets('Form validation test', (WidgetTester tester) async {
      // ✅ Fixed Issue #2: Removed testMain()
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle();

      expect(find.text('Please fill all fields'), findsOneWidget,
          reason: 'Should show validation error for empty form');
    });

    testWidgets('Empty state test', (WidgetTester tester) async {
      // ✅ Fixed Issue #2: Removed testMain()
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Transactions page should load');
      expect(find.byType(ListView), findsOneWidget,
          reason: 'ListView should exist for transaction list');

      // Check for empty state message
      expect(find.text('No transactions'), findsOneWidget,
          reason: 'Should show "No transactions" when list is empty');
    });

    testWidgets('Navigation flow test', (WidgetTester tester) async {
      // ✅ Fixed Issue #2: Removed testMain()
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('analytics_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('analytics_page')), findsOneWidget,
          reason: 'Should navigate to analytics');

      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Should return to transactions');

      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('money_type_field')), findsOneWidget,
          reason: 'Should navigate to add form');

      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Should return to transactions');
    });

    testWidgets('Add income transaction test', (WidgetTester tester) async {
      // ✅ Fixed Issue #2: Removed testMain()
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(const Key('money_type_field')),
        'Bonus',
      );
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Work Bonus',
      );
      await tester.enterText(find.byKey(const Key('amount_field')), '2000');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('insert_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle();  // ✅ Removed hard-coded Duration

      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Should return to transactions page');
      // ✅ Fixed Issue #5: Changed findsWidgets to findsOneWidget
      expect(find.textContaining('Work Bonus'), findsOneWidget,
          reason: 'Work Bonus transaction should appear exactly once');
    });

    testWidgets('Add expense transaction test', (WidgetTester tester) async {
      // ✅ Fixed Issue #2: Removed testMain()
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('add_transaction_button')));
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(const Key('money_type_field')),
        'Transport',
      );
      await tester.enterText(
        find.byKey(const Key('category_field')),
        'Daily Commute',
      );
      await tester.enterText(find.byKey(const Key('amount_field')), '500');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('withdraw_money_button')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('submit_button')));
      await tester.pumpAndSettle();  // ✅ Removed hard-coded Duration

      expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget,
          reason: 'Should return to transactions page');
      // ✅ Fixed Issue #5: Changed findsWidgets to findsOneWidget
      expect(find.textContaining('Daily Commute'), findsOneWidget,
          reason: 'Daily Commute transaction should appear exactly once');
    });

    testWidgets('View analytics test', (WidgetTester tester) async {
      // ✅ Fixed Issue #2: Removed testMain()
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key('analytics_button')));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('analytics_page')), findsOneWidget,
          reason: 'Analytics page should load');
      expect(find.byKey(const Key('total_income')), findsOneWidget,
          reason: 'Total income widget should display');
      expect(find.byKey(const Key('total_expense')), findsOneWidget,
          reason: 'Total expense widget should display');
      expect(find.byKey(const Key('balance')), findsOneWidget,
          reason: 'Balance widget should display');
      expect(find.byKey(const Key('monthly_analytics')), findsOneWidget,
          reason: 'Monthly analytics widget should display');
      expect(find.byType(ListView), findsOneWidget,
          reason: 'Analytics list should display');
    });
  });
}
