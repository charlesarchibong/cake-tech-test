import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart';
import 'package:cake_tech_test/features/auth/presentation/pages/create_pin_page.dart';
import 'package:cake_tech_test/features/auth/presentation/providers/create_pin_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:provider/provider.dart';

import '../../../../test_util.dart';
import 'create_pin_page_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late MockAuthRepository mockAuthRepository;
  late CreatePinProvider createPinProvider;
  setUp(() {
    mockAuthRepository = MockAuthRepository();
    createPinProvider = CreatePinProvider(mockAuthRepository);
  });

  //Test golden using "flutter test --update-goldens"
  group('CreatePinPage', () {
    testGoldens('initial', (tester) async {
      await tester.pumpCreatePinPage(createPinProvider);

      await multiScreenGolden(
        tester,
        'create_pin_page_initial',
        autoHeight: true,
      );
    });

    testGoldens('confirm pin', (tester) async {
      createPinProvider.setConfirmPin(true);
      await tester.pumpCreatePinPage(createPinProvider);

      await multiScreenGolden(
        tester,
        'create_pin_page_confirm_pin',
        autoHeight: true,
      );
    });

    testGoldens('pin filled', (tester) async {
      createPinProvider.pins.addAll([1, 2, 3, 4]);
      await tester.pumpCreatePinPage(createPinProvider);

      await multiScreenGolden(
        tester,
        'create_pin_page_pin_filled',
        autoHeight: true,
      );
    });
  });
}

extension on WidgetTester {
  Future<void> pumpCreatePinPage(CreatePinProvider provider) {
    return pumpCakeTechWidget(
      this,
      ChangeNotifierProvider.value(
        value: provider,
        child: const CreatePinPage(),
      ),
    );
  }
}
