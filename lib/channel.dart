import 'package:flutter/services.dart';

const platform = MethodChannel('com.example.app/flutter');

Future<int?> getBatteryLevel() async {
  try {
    final int result = await platform.invokeMethod('getBatteryLevel');
    return result;
  } on PlatformException catch (e) {
    print(e.message);
    return null;
  }
}