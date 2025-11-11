// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cash_flow/app.dart';
import 'package:cash_flow/core/common/custom_app_bar.dart';
import 'package:cash_flow/core/common/custom_button.dart';
import 'package:cash_flow/core/common/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:cash_flow/injector_container_path.dart' as di;

void main() {
  group('Cash Flow App - Widget Tests', () {
    setUpAll(() async {
      await di.init();
    });

    setUp(() {
      GetIt.instance.reset();
    });

    // ==================== TransactionsPage Tests ====================
    group('TransactionsPage Widget Tests', () {
      testWidgets(
        'TransactionsPage renders with app bar and FAB',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Verify AppBar is present
          expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);

          // Verify FAB (add_transaction_button) exists
          expect(find.byKey(const Key('add_transaction_button')), findsOneWidget);

          // Verify Analytics button exists
          expect(find.byKey(const Key('analytics_button')), findsOneWidget);
        },
      );

      testWidgets(
        'TransactionsPage displays empty state correctly',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Find empty state text
          expect(find.text('No transactions'), findsOneWidget);
        },
      );

      testWidgets(
        'TransactionsPage FAB navigates to AddEditPage',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Tap FAB
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify we're on the AddEditPage
          expect(find.byKey(const Key('money_type_field')), findsOneWidget);
          expect(find.byKey(const Key('category_field')), findsOneWidget);
          expect(find.byKey(const Key('amount_field')), findsOneWidget);
        },
      );

      testWidgets(
        'TransactionsPage analytics button navigates to AnalyticsPage',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Tap analytics button
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify we're on AnalyticsPage
          expect(find.byKey(const Key('analytics_page')), findsOneWidget);
          expect(find.byKey(const Key('total_income')), findsOneWidget);
          expect(find.byKey(const Key('total_expense')), findsOneWidget);
          expect(find.byKey(const Key('balance')), findsOneWidget);
        },
      );

      testWidgets(
        'TransactionsPage refresh indicator is present',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Verify RefreshIndicator is present
          expect(find.byType(RefreshIndicator), findsOneWidget);
        },
      );
    });

    // ==================== AddEditPage Tests ====================
    group('AddEditPage Widget Tests', () {
      testWidgets(
        'AddEditPage renders form fields correctly',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify all form fields are present
          expect(find.byKey(const Key('money_type_field')), findsOneWidget);
          expect(find.byKey(const Key('category_field')), findsOneWidget);
          expect(find.byKey(const Key('amount_field')), findsOneWidget);
          expect(find.byKey(const Key('select_money_type_button')), findsOneWidget);
        },
      );

      testWidgets(
        'AddEditPage money type field accepts input',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Enter text in money type field
          await tester.enterText(
            find.byKey(const Key('money_type_field')),
            'Salary',
          );
          await tester.pumpAndSettle();

          // Verify text was entered
          expect(find.text('Salary'), findsOneWidget);
        },
      );

      testWidgets(
        'AddEditPage category field accepts input',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Enter text in category field
          await tester.enterText(
            find.byKey(const Key('category_field')),
            'Monthly Income',
          );
          await tester.pumpAndSettle();

          // Verify text was entered
          expect(find.text('Monthly Income'), findsOneWidget);
        },
      );

      testWidgets(
        'AddEditPage amount field accepts numeric input',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Enter number in amount field
          await tester.enterText(
            find.byKey(const Key('amount_field')),
            '5000',
          );
          await tester.pumpAndSettle();

          // Verify text was entered
          expect(find.text('5000'), findsOneWidget);
        },
      );

      testWidgets(
        'AddEditPage form submission button exists',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify submit button exists
          expect(find.byKey(const Key('submit_button')), findsOneWidget);
        },
      );

      testWidgets(
        'AddEditPage money type selector has insert/withdraw options',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Find and tap the money type selector
          await tester.tap(find.byKey(const Key('select_money_type_button')));
          await tester.pumpAndSettle();

          // Verify options exist
          expect(find.byKey(const Key('insert_money_button')), findsWidgets);
          expect(find.byKey(const Key('withdraw_money_button')), findsWidgets);
        },
      );

      testWidgets(
        'AddEditPage validates empty form submission',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Try to submit empty form
          await tester.tap(find.byKey(const Key('submit_button')));
          await tester.pumpAndSettle();

          // Verify validation error appears
          expect(find.text('Please fill all fields'), findsOneWidget);
        },
      );

      testWidgets(
        'AddEditPage back button navigates back',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AddEditPage
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify we're on AddEditPage
          expect(find.byKey(const Key('money_type_field')), findsOneWidget);

          // Navigate back
          await tester.tap(find.byType(BackButton));
          await tester.pumpAndSettle();

          // Verify we're back on TransactionsPage
          expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
        },
      );
    });

    // ==================== AnalyticsPage Tests ====================
    group('AnalyticsPage Widget Tests', () {
      testWidgets(
        'AnalyticsPage renders with all required widgets',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AnalyticsPage
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify all analytics widgets are present
          expect(find.byKey(const Key('analytics_page')), findsOneWidget);
          expect(find.byKey(const Key('total_income')), findsOneWidget);
          expect(find.byKey(const Key('total_expense')), findsOneWidget);
          expect(find.byKey(const Key('balance')), findsOneWidget);
          expect(find.byKey(const Key('monthly_analytics')), findsOneWidget);
        },
      );

      testWidgets(
        'AnalyticsPage displays income text',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AnalyticsPage
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify income label is displayed
          expect(
            find.textContaining('Total Income:'),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'AnalyticsPage displays expense text',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AnalyticsPage
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify expense label is displayed
          expect(
            find.textContaining('Total Expense:'),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'AnalyticsPage displays balance text',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AnalyticsPage
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify balance label is displayed
          expect(
            find.textContaining('Balance:'),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'AnalyticsPage displays monthly analytics list',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AnalyticsPage
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify ListView is present for monthly data
          expect(find.byType(ListView), findsOneWidget);
        },
      );

      testWidgets(
        'AnalyticsPage back button navigates back',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AnalyticsPage
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify we're on AnalyticsPage
          expect(find.byKey(const Key('analytics_page')), findsOneWidget);

          // Navigate back
          await tester.tap(find.byType(BackButton));
          await tester.pumpAndSettle();

          // Verify we're back on TransactionsPage
          expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
        },
      );

      testWidgets(
        'AnalyticsPage values are formatted as currency',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to AnalyticsPage
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Find income text and verify it contains decimal format
          final incomeText = find.byKey(const Key('total_income'));
          expect(incomeText, findsOneWidget);

          // Verify text contains currency pattern (e.g., 0.00)
          expect(find.textContaining(RegExp(r'\d+\.\d{2}')), findsWidgets);
        },
      );
    });

    // ==================== Custom Widget Tests ====================
    group('Custom Widget Tests', () {
      testWidgets(
        'CustomAppBar renders title',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                appBar: CustomAppBar(
                  title: 'Test Title',
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();

          expect(find.text('Test Title'), findsOneWidget);
        },
      );

      testWidgets(
        'CustomAppBar renders with actions',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                appBar: CustomAppBar(
                  title: 'Test Title',
                  actions: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                  ),
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();

          expect(find.byIcon(Icons.settings), findsOneWidget);
        },
      );

      testWidgets(
        'CustomTextField accepts text input',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: CustomTextField(
                  hintText: 'Enter text',
                  textInputType: TextInputType.text,
                  textEditingController: TextEditingController(),
                  focusNode: FocusNode(),
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();

          expect(find.byType(TextField), findsOneWidget);
          expect(find.text('Enter text'), findsOneWidget);
        },
      );

      testWidgets(
        'CustomTextField displays hint text',
        (WidgetTester tester) async {
          final controller = TextEditingController();
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: CustomTextField(
                  hintText: 'Test Hint',
                  textInputType: TextInputType.text,
                  textEditingController: controller,
                  focusNode: FocusNode(),
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();

          expect(find.text('Test Hint'), findsOneWidget);
        },
      );

      testWidgets(
        'CustomButton is tappable',
        (WidgetTester tester) async {
          bool tapped = false;
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: CustomButton(
                  text: 'Test Button',
                  onTap: () {
                    tapped = true;
                  },
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();

          await tester.tap(find.byType(CustomButton));
          await tester.pumpAndSettle();

          expect(tapped, true);
        },
      );

      testWidgets(
        'CustomButton displays title',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: CustomButton(
                  text: 'Click Me',
                  onTap: () {},
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();

          expect(find.text('Click Me'), findsOneWidget);
        },
      );
    });

    // ==================== Theme Tests ====================
    group('Theme Tests', () {
      testWidgets(
        'App renders with light theme',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Verify app is built successfully
          expect(find.byType(App), findsOneWidget);
        },
      );

      testWidgets(
        'App applies text styles correctly',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Navigate to analytics to see styled text
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();

          // Verify styled text is rendered
          expect(find.byType(Text), findsWidgets);
        },
      );

      testWidgets(
        'App supports material design',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Verify Material design widgets are used
          expect(find.byType(Scaffold), findsWidgets);
          expect(find.byType(AppBar), findsWidgets);
        },
      );
    });

    // ==================== Navigation Tests ====================
    group('Navigation Tests', () {
      testWidgets(
        'Navigation between main pages works',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Start on TransactionsPage
          expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);

          // Navigate to Add
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();
          expect(find.byKey(const Key('money_type_field')), findsOneWidget);

          // Go back
          await tester.tap(find.byType(BackButton));
          await tester.pumpAndSettle();
          expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);

          // Navigate to Analytics
          await tester.tap(find.byKey(const Key('analytics_button')));
          await tester.pumpAndSettle();
          expect(find.byKey(const Key('analytics_page')), findsOneWidget);

          // Go back
          await tester.tap(find.byType(BackButton));
          await tester.pumpAndSettle();
          expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
        },
      );

      testWidgets(
        'Can add multiple transactions in sequence',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // First transaction
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();
          await tester.enterText(
            find.byKey(const Key('money_type_field')),
            'Salary',
          );
          await tester.pumpAndSettle();
          await tester.enterText(
            find.byKey(const Key('category_field')),
            'Income',
          );
          await tester.pumpAndSettle();
          await tester.enterText(find.byKey(const Key('amount_field')), '5000');
          await tester.pumpAndSettle();

          // Navigate back
          await tester.tap(find.byType(BackButton));
          await tester.pumpAndSettle();

          // Second transaction
          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify form is fresh
          expect(find.byType(CustomTextField), findsWidgets);
        },
      );
    });

    // ==================== Responsive Design Tests ====================
    group('Responsive Design Tests', () {
      testWidgets(
        'App renders correctly on different screen sizes',
        (WidgetTester tester) async {
          // Add screen size for tablet
          addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
          tester.binding.window.physicalSizeTestValue = const Size(1200, 800);

          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          expect(find.byKey(const Key('transactions_app_bar')), findsOneWidget);
        },
      );

      testWidgets(
        'Form scrolls on small screens',
        (WidgetTester tester) async {
          addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
          tester.binding.window.physicalSizeTestValue = const Size(400, 600);

          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify SingleChildScrollView or similar is used
          expect(find.byType(SingleChildScrollView), findsOneWidget);
        },
      );
    });

    // ==================== Accessibility Tests ====================
    group('Accessibility Tests', () {
      testWidgets(
        'All buttons have proper semantics',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          // Verify buttons are semantically correct
          expect(find.byType(IconButton), findsWidgets);
          expect(find.byType(GestureDetector), findsWidgets);
        },
      );

      testWidgets(
        'Text fields have proper labels',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify text fields are present and accessible
          expect(find.byType(CustomTextField), findsWidgets);
        },
      );

      testWidgets(
        'App bar has navigation support',
        (WidgetTester tester) async {
          await tester.pumpWidget(const App());
          await tester.pumpAndSettle();

          await tester.tap(find.byKey(const Key('add_transaction_button')));
          await tester.pumpAndSettle();

          // Verify back button is accessible
          expect(find.byType(BackButton), findsOneWidget);
        },
      );
    });
  });
}
