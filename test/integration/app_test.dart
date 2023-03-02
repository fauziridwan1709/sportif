import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() async {
    // await Config.init(Flavor.testing);
  });

  // setUp(configureTestDependencies);

  tearDown(getIt.reset);

  testWidgets('Test app page', (WidgetTester tester) async {
    await tester.runAsync(() async {
      // await tester.pumpWidget(const App());
      await tester.pumpAndSettle();
    });
  });
}
