import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_comp/main.dart'; // Ajusta si tu proyecto tiene otro nombre

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Carga la app
    await tester.pumpWidget(MyApp());

    // Verifica que inicia con "0"
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Presiona el botón "+"
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que el contador ahora muestra "1"
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
