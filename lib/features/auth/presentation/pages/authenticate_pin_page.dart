import 'package:cake_tech_test/core/core.dart';
import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart';
import 'package:cake_tech_test/features/auth/presentation/providers/authenticate_pin_provider.dart';
import 'package:cake_tech_test/features/auth/presentation/widgets/pin_code_widget.dart';
import 'package:cake_tech_test/features/auth/presentation/widgets/pin_keyboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticatePinPage extends StatefulWidget {
  const AuthenticatePinPage({
    super.key,
  });

  static Future<void> push(
    BuildContext context,
  ) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ChangeNotifierProvider(
          create: (context) => AuthenticatePinProvider(
            authRepository: sl<AuthRepository>(),
          ),
          child: const AuthenticatePinPage(),
        ),
      ),
    );
  }

  @override
  State<AuthenticatePinPage> createState() => _AuthenticatePinPageState();
}

class _AuthenticatePinPageState extends State<AuthenticatePinPage> {
  @override
  Widget build(BuildContext context) {
    final authenticatePinProvider = Provider.of<AuthenticatePinProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Enter your PIN',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff859DBB),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < (authenticatePinProvider.isSixCode ? 6 : 4); i++)
                        Row(
                          children: [
                            const SizedBox(width: 5.0),
                            PinCodeWidget(
                              filled: authenticatePinProvider.pins.length >= (i + 1),
                            ),
                            const SizedBox(width: 5.0),
                          ],
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            PinKeyboardWidget(
              onPressed: (index) {
                authenticatePinProvider.keysPressed(index, context);
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
