part of 'air_quality_bloc.dart';

abstract class AirQualityState extends Equatable {
  const AirQualityState();

  @override
  List<Object> get props => [];
}

class GettingAirQualityState extends AirQualityState {
  const GettingAirQualityState();

  @override
  List<Object> get props => [];
}

class GotAirQualityState extends AirQualityState {
  final models.AirQuality airQuality;

  const GotAirQualityState({
    required this.airQuality,
  });

  @override
  List<Object> get props => [
        airQuality,
      ];
}

class FailedToGetAirQualityState extends AirQualityState {
  const FailedToGetAirQualityState();

  @override
  List<Object> get props => [];
}
