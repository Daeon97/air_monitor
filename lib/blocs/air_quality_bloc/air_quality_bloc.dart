import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/models.dart' as models;
import '../../repositories/repositories.dart' as repositories;

part 'air_quality_event.dart';
part 'air_quality_state.dart';

class AirQualityBloc extends Bloc<AirQualityEvent, AirQualityState> {
  AirQualityBloc({
    required repositories.AirQualityRepository airQualityRepository,
  }) : super(
          const GettingAirQualityState(),
        ) {
    on<GetAirQualityEvent>(
      (event, emit) async {
        emit(
          const GettingAirQualityState(),
        );
        try {
          models.AirQuality airQuality =
              await airQualityRepository.getAirQuality();
          emit(
            GotAirQualityState(
              airQuality: airQuality,
            ),
          );
        } catch (error) {
          emit(
            const FailedToGetAirQualityState(),
          );
        }
      },
    );
  }
}
