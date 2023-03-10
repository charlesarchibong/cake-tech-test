import 'package:cake_tech_test/features/auth/presentation/pages/menu_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../test_util.dart';

void main() {
  //Test golden using "flutter test --update-goldens"
  group('MenuPage', () {
    testGoldens('initial', (tester) async {
      await tester.pumpMenuPage();

      await multiScreenGolden(
        tester,
        'menu_page',
      );
    });
  });
}

extension on WidgetTester {
  Future<void> pumpMenuPage() {
    return pumpCakeTechWidget(
      this,
      const MenuPage(),
    );
  }
}
