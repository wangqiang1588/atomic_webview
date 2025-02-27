import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';

void main() {
  const MethodChannel channel = MethodChannel('webview_window');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
