// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:open_travel/app/app_module.dart';

void main() {
  initModule(AppModule());
  // AppController app;
  //
  setUp(() {
    //     app = AppModule.to.get<AppController>();
  });

  group('AppController Test', () {
    //   test("First Test", () {
    //     expect(app, isInstanceOf<AppController>());
    //   });

    //   test("Set Value", () {
    //     expect(app.value, equals(0));
    //     app.increment();
    //     expect(app.value, equals(1));
    //   });
  });
}
