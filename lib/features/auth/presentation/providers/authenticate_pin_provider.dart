import 'package:cake_tech_test/core/core.dart';
import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart';
import 'package:cake_tech_test/features/auth/presentation/widgets/dialog_alert.dart';
import 'package:flutter/material.dart';

class AuthenticatePinProvider extends ChangeNotifier {
  final AuthRepository authRepository;

  AuthenticatePinProvider({
    required this.authRepository,
  }) {
    initialize();
  }

  final _pins = <int>[];
  List<int> get pins => _pins;

  bool _isSixCode = false;
  bool get isSixCode => _isSixCode;

  String? _pin = '';
  void initialize() async {
    final pin = await authRepository.getPin();
    final isSixCode = await authRepository.isPinCodeLengthSix();
    _pin = pin.rightOrNull;
    _isSixCode = isSixCode.rightOrNull ?? false;
    notifyListeners();
  }

  void reset() {
    _pins.clear();
    notifyListeners();
  }

  int zeroKeyPressed(int i) {
    if (i == 10) {
      return 0;
    } else {
      return i + 1;
    }
  }

  void keysPressed(int index, BuildContext context) async {
    if (index == 9) return;
    if (index == 11) {
      if (_pins.isNotEmpty) {
        _pins.removeLast();
        notifyListeners();
      }
    } else {
      var length = isSixCode ? 6 : 4;
      if (_pins.length < length) {
        _pins.add(zeroKeyPressed(index));
        notifyListeners();
      }
      if (_pins.length == length) {
        var newPin = '';
        for (var item in _pins) {
          newPin += item.toString();
        }

        if (newPin == _pin) {
          await showAlertDialog('Authentication success', hideButton: true, context: context);
        } else {
          await showAlertDialog(
            'Authentication failed',
            context: context,
            hideButton: true,
          );
        }
        reset();
      }
    }
  }
}
