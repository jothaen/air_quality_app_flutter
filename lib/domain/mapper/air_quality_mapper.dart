import 'package:air_quality_app/data/dto/air_quality_data_dto.dart';
import 'package:air_quality_app/data/dto/sensor_value_dto.dart';
import 'package:air_quality_app/data/dto/sensors_data_dto.dart';
import 'package:air_quality_app/domain/mapper/air_quality_named_mapper.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:air_quality_app/domain/model/pollutant.dart';
import 'package:air_quality_app/domain/model/pollution_data.dart';

class AirQualityMapper {
  AirQualityMapper._();

  static AirQuality map(AirQualityDataDto data) {
    return AirQuality(
      data.cityId,
      data.time.timeString,
      data.city.name,
      data.aqi,
      AirQualityNamedMapper.mapAirQualityNamed(data.aqi),
      _mapPollutionData(data.sensorsData),
    );
  }

  static List<PollutionData> _mapPollutionData(SensorsDataDto sensorsData) {
    final results = [
      _createPollutionData(Pollutant.pm10, sensorsData.pm10),
      _createPollutionData(Pollutant.pm25, sensorsData.pm25),
      _createPollutionData(Pollutant.no2, sensorsData.no2),
      _createPollutionData(Pollutant.co, sensorsData.co),
    ];
    // filtering-out all null values from the results list
    return results.whereType<PollutionData>().toList();
  }

  static PollutionData? _createPollutionData(Pollutant pollutant, SensorValueDto? sensorValue) {
    if (sensorValue != null) {
      return PollutionData(
        pollutant.name,
        sensorValue.value,
        pollutant.unit,
        sensorValue.value * 100 ~/ pollutant.normByWHO,
      );
    } else {
      return null;
    }
  }
}
