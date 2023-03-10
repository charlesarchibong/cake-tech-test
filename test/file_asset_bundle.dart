import 'package:flutter/services.dart';
import 'package:golden_toolkit/src/test_asset_bundle.dart';

class FileAssetBundle extends TestAssetBundle {
  @override
  Future<ByteData> load(String key) {
    return rootBundle.load(key);
  }
}
