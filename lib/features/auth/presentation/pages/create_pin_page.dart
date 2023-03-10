import 'package:cake_tech_test/core/core.dart';
import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart';
import 'package:cake_tech_test/features/auth/presentation/providers/create_pin_provider.dart';
import 'package:cake_tech_test/features/auth/presentation/widgets/pin_code_widget.dart';
import 'package:cake_tech_test/features/auth/presentation/widgets/pin_keyboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreatePinPage extends StatefulWidget {
  const CreatePinPage({super.key});

  static Future<void> push(
    BuildContext context, [
    bool isConfirm = false,
  ]) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ChangeNotifierProvider(
          create: (context) => CreatePinProvider(
            sl<AuthRepository>(),
          ),
          child: const CreatePinPage(),
        ),
      ),
    );
  }

  @override
  State<CreatePinPage> createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  @override
  Widget build(BuildContext context) {
    final createPinProvider = Provider.of<CreatePinProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Setup PIN',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () => createPinProvider.setIsSixCode(),
            child: const Text(
              'Use 6-digits Pin',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff859DBB),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    createPinProvider.confirmPin ? 'Re-enter your PIN' : 'Create PIN',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xff859DBB),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < (createPinProvider.isSixCode ? 6 : 4); i++)
                        Row(
                          children: [
                            const SizedBox(width: 5.0),
                            PinCodeWidget(
                              filled: createPinProvider.pins.length >= (i + 1),
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
                createPinProvider.keysPressed(index, context);
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
