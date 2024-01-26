import 'package:air_quality_app/air_quality_app.dart';
import 'package:air_quality_app/config/locator.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  setupServiceLocator();
  await Hive.initFlutter();
  runApp(const AirQualityApp());
}
