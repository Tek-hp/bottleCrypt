import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bottle_crypt/bottle_crypt.dart';

void main() {
  const MethodChannel channel = MethodChannel('bottle_crypt');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await BottleCrypt.platformVersion, '42');
  });
}
