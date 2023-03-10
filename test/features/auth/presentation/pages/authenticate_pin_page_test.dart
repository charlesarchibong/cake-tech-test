import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart';
import 'package:cake_tech_test/features/auth/presentation/pages/authenticate_pin_page.dart';
import 'package:cake_tech_test/features/auth/presentation/providers/authenticate_pin_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:provider/provider.dart';

import '../../../../test_util.dart';
import 'create_pin_page_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late MockAuthRepository mockAuthRepository;
  late AuthenticatePinProvider authenticatePinProvider;
  setUp(() {
    mockAuthRepository = MockAuthRepository();
    authenticatePinProvider = AuthenticatePinProvider(authRepository: mockAuthRepository);
  });

  //Test golden using "flutter test --update-goldens"
  group('AuthenticatePinPage', () {
    testGoldens('initial', (tester) async {
      await tester.pumpAuthenticatePinPage(authenticatePinProvider);

      await multiScreenGolden(
        tester,
        'authenticate_pin_page_initial',
        autoHeight: true,
      );
    });

    testGoldens('pin filled', (tester) async {
      authenticatePinProvider.pins.addAll([1, 2, 3, 4]);
      await tester.pumpAuthenticatePinPage(authenticatePinProvider);

      await multiScreenGolden(
        tester,
        'authenticate_pin_page_pin_filled',
        autoHeight: true,
      );
    });
  });
}

extension on WidgetTester {
  Future<void> pumpAuthenticatePinPage(AuthenticatePinProvider provider) {
    return pumpCakeTechWidget(
      this,
      ChangeNotifierProvider.value(
        value: provider,
        child: const AuthenticatePinPage(),
      ),
    );
  }
}
