import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkit.configuration.copyWith(
      defaultDevices: [
        const Device(name: '640x360', size: Size(360, 640)),
        const Device(name: '926x428', size: Size(428, 926)),
      ],
      enableRealShadows: true,
    ),
  );
}
