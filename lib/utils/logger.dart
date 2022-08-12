import 'package:flutter/material.dart';

class Logger {
  static print(Object msg) {
    debugPrint(msg.toString());
  }
}
