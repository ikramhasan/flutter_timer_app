import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/infrastructure/bootstrapApp.dart';
import 'package:flutter_timer_app/core/presentation/timer_app.dart';

void main() {
  bootstrapApp();
  runApp(const TimerApp());
}
