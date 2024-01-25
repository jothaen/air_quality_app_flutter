import 'package:air_quality_app/presentation/air_quality/air_quality_page.dart';
import 'package:flutter/material.dart';

class AirQualityApp extends StatelessWidget {
  const AirQualityApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Air Quality',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const AirQualityPage(),
    );
  }
}
