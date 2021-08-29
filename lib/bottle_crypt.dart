import 'dart:ffi';
import 'dart:io';
import 'dart:async';

import 'package:flutter/services.dart';

final DynamicLibrary bottleEncryptLib = Platform.isAndroid
    ? DynamicLibrary.open('libbottle_encrypt.so')
    : DynamicLibrary.process();

// final String Function(String input, bool encoding) bottle_encrypt = bottleEncryptLib
//     .lookup<NativeFunction<String Function(String, bool)>>("bottle_encrypt")
//     .asFunction();

class BottleCrypt {
  static const MethodChannel _channel = const MethodChannel('bottle_crypt');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
