import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:labs8plus/main.dart';

double calc(double x) {
  return (x - 3) / (4 + x);
}

void main() {
  test('calc', () {
    expect(calc(10.0), 0.5);
  });
  testWidgets('widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text("IPZ-34: Oleksandr's last Flutter App"), findsOneWidget);

    expect(find.byIcon(Icons.electric_car), findsOneWidget);

    await tester.tap(find.byIcon(Icons.electric_car));
    await tester.pump();

    expect(find.text('7'), findsOneWidget);
  });
}
