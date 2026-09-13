// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shrine/app.dart';
import 'package:shrine/supplemental/asymmetric_view.dart';

void main() {
  testWidgets('Selecting HOME category smoke test', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.75;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const ShrineApp());
    await tester.pumpAndSettle();

    // Tap NEXT on login page
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();

    // Tap menu icon to show category menu
    await tester.tap(find.byType(IconButton).first);
    await tester.pumpAndSettle();

    // Tap 'HOME'
    await tester.tap(find.text('HOME'));
    await tester.pumpAndSettle();

    // Now drag horizontally to scroll through products in HOME category
    await tester.drag(find.byType(AsymmetricView), const Offset(-500, 0));
    await tester.pumpAndSettle();

    // Re-open menu
    await tester.tap(find.byType(IconButton).first);
    await tester.pumpAndSettle();

    // Tap 'CLOTHING'
    await tester.tap(find.text('CLOTHING'));
    await tester.pumpAndSettle();

    // Drag horizontally
    await tester.drag(find.byType(AsymmetricView), const Offset(-500, 0));
    await tester.pumpAndSettle();

    // Re-open menu
    await tester.tap(find.byType(IconButton).first);
    await tester.pumpAndSettle();

    // Tap 'ALL'
    await tester.tap(find.text('ALL'));
    await tester.pumpAndSettle();
  });
}
