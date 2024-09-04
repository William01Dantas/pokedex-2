import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/features/presentation/widgets/tag_widget.dart';
import 'package:pokedex/core/presenters/theme/size_outlet.dart';

void main() {
  testWidgets('TagWidget has correct padding and margin', (WidgetTester tester) async {
    // Build the TagWidget
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: TagWidget(text: 'Test'),
      ),
    ));

    // Find the TagWidget
    final tagWidgetFinder = find.byType(TagWidget);
    expect(tagWidgetFinder, findsOneWidget);

    // Find the Container inside the TagWidget
    final containerFinder = find.descendant(
      of: tagWidgetFinder,
      matching: find.byType(Container),
    );

    final container = tester.widget<Container>(containerFinder);
    final padding = container.padding as EdgeInsets;
    final margin = container.margin as EdgeInsets;

    // Verify padding and margin
    expect(padding, equals(const EdgeInsets.symmetric(
      horizontal: SizeOutlet.paddingSizeSmall,
      vertical: SizeOutlet.paddingSizeMicro,
    )));
    expect(margin, equals(const EdgeInsets.only(
      right: SizeOutlet.paddingSizeSmall,
    )));
  });
}
