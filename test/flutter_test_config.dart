import 'dart:async';

import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkit.configuration.copyWith(
      defaultDevices: const [
        Device.phone,
        Device.iphone11,
      ],
      enableRealShadows: true,
    ),
  );
}
