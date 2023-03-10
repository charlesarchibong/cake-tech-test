import 'package:cake_tech_test/features/auth/domain/repositories/auth_repository.dart';
import 'package:cake_tech_test/features/auth/presentation/widgets/dialog_alert.dart';
import 'package:flutter/material.dart';

class CreatePinProvider extends ChangeNotifier {
  final AuthRepository authRepository;

  CreatePinProvider(this.authRepository);

  final _pins = <int>[];
  List<int> get pins => _pins;

  bool _confirmPin = false;
  bool get confirmPin => _confirmPin;

  bool _isSixCode = false;
  bool get isSixCode => _isSixCode;

  var _pin = '';

  void setConfirmPin(bool value) {
    _confirmPin = value;
    notifyListeners();
  }

  void setIsSixCode() async {
    _isSixCode = !_isSixCode;
    await authRepository.setPinCodeLength(_isSixCode);
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
        if (_confirmPin) {
          _pin == newPin ? await savePin(context) : await showAlertDialog('Pin Mismatch', context: context);
        } else {
          _pin = newPin;
          _confirmPin = !_confirmPin;
          notifyListeners();
        }
        reset();
      }
    }
  }

  Future<void> savePin(BuildContext context) async {
    await authRepository.savePin(_pin);
    // ignore: use_build_context_synchronously
    await showAlertDialog('Your PIN has been setup successfully', context: context, success: true);
  }
}
