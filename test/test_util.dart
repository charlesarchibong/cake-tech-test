import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'file_asset_bundle.dart';

Future<void> pumpCakeTechWidget(
  WidgetTester tester,
  Widget widget, {
  WidgetWrapper? wrapper,
  Size? surfaceSize,
  double textScaleSize = 1.0,
}) {
  return tester.pumpWidgetBuilder(
    DefaultAssetBundle(
      bundle: FileAssetBundle(),
      child: widget,
    ),
    wrapper: materialAppWrapper(),
  );
}
