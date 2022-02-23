import 'package:dio/dio.dart';
import '../models/models.dart' as models;
import '../utils/utils.dart' as utils;

class AirQualityRepository {
  final Dio _dio;

  AirQualityRepository()
      : _dio = Dio(
          BaseOptions(
            baseUrl: utils.baseUrl,
          ),
        );

  Future<models.AirQuality> getAirQuality() async {
    // Response<Map<String, dynamic>> response = await _dio.get(
    //   utils.path,
    // );
    // return models.AirQuality.fromJson(json: response.data!);

    return models.AirQuality.fromJson(
      json: {
        'testing': 'testing...',
      },
    );
  }
}
