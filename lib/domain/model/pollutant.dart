// ignore_for_file: prefer-correct-identifier-length
enum Pollutant {
  pm10('PM10', 'µg/m\u00B3', 45),
  pm25('PM2.5', 'µg/m\u00B3', 15),
  no2('NO\u2082', 'µg/m\u00B3', 25),
  co('CO', 'µg/m\u00B3', 4000);

  const Pollutant(this.name, this.unit, this.normByWHO);
  final String name;
  final int normByWHO;
  final String unit;
}
