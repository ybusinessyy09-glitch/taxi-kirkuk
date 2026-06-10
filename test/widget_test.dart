import 'package:flutter_test/flutter_test.dart';

import 'package:taxi_kirkuk/main.dart';

void main() {
  testWidgets('App launches with splash screen', (WidgetTester tester) async {
    await tester.pumpWidget(const TaxiKirkukApp());
    await tester.pump();

    expect(find.text('Taxi Kirkuk'), findsOneWidget);
    expect(find.text('تاكسي كركوك'), findsOneWidget);
  });
}
