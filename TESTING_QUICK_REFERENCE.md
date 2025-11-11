# Integration & Widget Testing - Quick Reference Card

## 🎯 Quick Decision Guide

### Choose Integration Test When:
```
✓ Testing complete user workflows
✓ Multiple features interact
✓ End-to-end verification needed
✓ Navigation is critical
✓ Data persistence required
```

### Choose Widget Test When:
```
✓ Testing single widget
✓ Component behavior
✓ UI appearance
✓ State changes
✓ Accessibility
```

---

## 🧪 Integration Test Template

```dart
import 'package:cash_flow/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Feature Tests', () {
    testWidgets('User workflow description', (WidgetTester tester) async {
      // Initialize app
      app.main();
      await tester.pumpAndSettle();

      // Perform actions
      await tester.tap(find.byKey(const Key('button_key')));
      await tester.pumpAndSettle();

      // Verify results
      expect(find.byKey(const Key('expected_widget')), findsOneWidget);
    });
  });
}
```

---

## 🎨 Widget Test Template

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cash_flow/path/to/widget.dart';

void main() {
  group('CustomWidget Tests', () {
    testWidgets('Widget renders correctly', (WidgetTester tester) async {
      // Build widget
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomWidget(),
          ),
        ),
      );

      // Interact
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      // Assert
      expect(find.text('Expected'), findsOneWidget);
    });
  });
}
```

---

## 📋 Common Finders

```dart
// By Key
find.byKey(const Key('key_name'))

// By Type
find.byType(Button)
find.byType(TextField)
find.byType(ListView)

// By Text
find.text('Exact text')
find.textContaining('Partial')

// By Icon
find.byIcon(Icons.add)

// By Semantics
find.bySemanticsLabel('Label')

// Custom
find.byWidgetPredicate((widget) => widget is MyWidget)
```

---

## 📊 Common Assertions

```dart
// Widget count
findsOneWidget              // Exactly 1
findsWidgets                // 2 or more
findsNothing                // 0

// Specific count
findsWidgetCount(5)         // Exactly 5

// Text matching
find.text('text')           // Exact match
find.textContaining('text') // Partial match

// Visibility
isVisible                   // Is on screen
isOnstage                   // Is in widget tree
```

---

## ⏱️ Pump Methods

```dart
// Rebuild widget
await tester.pump();

// Rebuild and wait
await tester.pump(const Duration(seconds: 1));

// Rebuild until stable (recommended)
await tester.pumpAndSettle();

// Rebuild with max duration
await tester.pumpAndSettle(const Duration(seconds: 2));
```

---

## 🎬 User Interactions

```dart
// Text input
await tester.enterText(find.byType(TextField), 'text');

// Button tap
await tester.tap(find.byType(Button));

// Long press
await tester.longPress(find.byType(Widget));

// Drag
await tester.drag(find.byType(ListView), const Offset(0, -300));

// Scroll
await tester.scrollUntilVisible(
  find.byType(Widget),
  500,
  scrollable: find.byType(Scrollable),
);

// Keyboard
await tester.testTextInput.receiveAction(TextInputAction.done);
```

---

## 🔧 Test Lifecycle

```dart
setUp(() {
  // Runs before each test
  // Clean state, mocks setup
});

tearDown(() {
  // Runs after each test
  // Cleanup, resources release
});

setUpAll(() {
  // Runs once before all tests in group
  // Expensive setup
});

tearDownAll(() {
  // Runs once after all tests in group
  // Cleanup shared resources
});
```

---

## 🚀 Running Tests

```bash
# All tests
flutter test

# Specific test file
flutter test test/widget_test.dart

# Integration tests
flutter test integration_test/

# Specific test
flutter test -k "test_name"

# With coverage
flutter test --coverage

# Watch mode
flutter test --watch

# Verbose
flutter test -v
```

---

## 📈 Performance Tips

```dart
// ❌ Slow
await tester.pump(const Duration(seconds: 5));

// ✅ Fast
await tester.pumpAndSettle();

// ❌ Flaky
expect(find.textContaining('text'), findsOneWidget);

// ✅ Reliable  
expect(find.text('exact text'), findsOneWidget);

// ❌ Coupled
testWidgets('Test A & B & C', (...) async { ... });

// ✅ Independent
testWidgets('Test A', (...) async { ... });
testWidgets('Test B', (...) async { ... });
testWidgets('Test C', (...) async { ... });
```

---

## 🎯 Cash Flow Test Keys

### Navigation
```
transactions_app_bar
analytics_button
add_transaction_button
```

### Form Fields
```
money_type_field
category_field
amount_field
```

### Buttons
```
insert_money_button (income)
withdraw_money_button (expense)
submit_button
delete_button
```

### Display Widgets
```
analytics_page
total_income
total_expense
balance
monthly_analytics
```

---

## ✅ Pre-Test Checklist

```dart
✓ Keys added to widgets
✓ MockData prepared
✓ Dependencies mocked
✓ State reset in setUp()
✓ Assertions specified
✓ Edge cases considered
```

---

## 🚨 Common Issues & Solutions

| Issue | Cause | Solution |
|-------|-------|----------|
| Test hangs | No pump | Add `pumpAndSettle()` |
| Widget not found | Timing | Add delays/pump |
| Flaky tests | State not clean | Reset in setUp() |
| Wrong widget | Poor finder | Use more specific finder |
| Text not found | Case sensitive | Use exact match |

---

## 📊 Test Metrics

### Integration Tests
- **Count:** 7
- **Duration:** 30-35s
- **Coverage:** Main workflows
- **Priority:** High

### Widget Tests  
- **Count:** 10+
- **Duration:** 1-2s each
- **Coverage:** All components
- **Priority:** Medium

### Unit Tests
- **Count:** 50+
- **Duration:** <1s each
- **Coverage:** Logic/functions
- **Priority:** High

---

## 📚 Resources

### Documentation
- [Flutter Testing](https://flutter.dev/docs/testing)
- [Widget Testing](https://flutter.dev/docs/testing/overview#widget-tests)
- [Integration Testing](https://flutter.dev/docs/testing/overview#integration-tests)

### Files in Project
```
integration_test/app_test.dart          # Integration tests
test/widget_test.dart                   # Widget tests
INTEGRATION_TEST_ANALYSIS.md            # Detailed analysis
INTEGRATION_TEST_ENHANCEMENTS.md        # Improvements
INTEGRATION_vs_WIDGET_TESTS.md          # Comparison
COMPLETE_TESTING_GUIDE.md               # Full guide
```

---

## 🎓 Example: Complete Test

```dart
void main() {
  group('Transaction Management', () {
    testWidgets('User adds income transaction successfully', 
      (WidgetTester tester) async {
        // SETUP
        app.main();
        await tester.pumpAndSettle();
        
        // ACT
        await tester.tap(find.byKey(const Key('add_transaction_button')));
        await tester.pumpAndSettle();
        
        await tester.enterText(
          find.byKey(const Key('money_type_field')), 
          'Salary'
        );
        await tester.enterText(
          find.byKey(const Key('category_field')), 
          'Work'
        );
        await tester.enterText(
          find.byKey(const Key('amount_field')), 
          '5000'
        );
        
        await tester.tap(find.byKey(const Key('insert_money_button')));
        await tester.pumpAndSettle();
        
        await tester.tap(find.byKey(const Key('submit_button')));
        await tester.pumpAndSettle();
        
        // ASSERT
        expect(
          find.byKey(const Key('transactions_app_bar')), 
          findsOneWidget
        );
        expect(find.text('Work'), findsWidgets);
      },
    );
  });
}
```

---

## 🏁 Remember

✅ **Test behavior, not implementation**
✅ **Keep tests independent**
✅ **Use meaningful keys**
✅ **One concept per test**
✅ **Clean up after tests**
✅ **Make tests readable**
✅ **Test edge cases**
✅ **Avoid brittle tests**

