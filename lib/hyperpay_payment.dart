import 'dart:async';

import 'package:flutter/services.dart';

class HyperpayPayment {
  static const MethodChannel _channel =
      const MethodChannel('hyperpay_payment');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
