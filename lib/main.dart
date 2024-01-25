import 'package:air_quality_app/air_quality_app.dart';
import 'package:air_quality_app/config/locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(const AirQualityApp());
}
