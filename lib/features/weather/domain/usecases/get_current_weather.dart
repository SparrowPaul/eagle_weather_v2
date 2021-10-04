import 'package:dartz/dartz.dart';
import 'package:eagle_weather_v2/core/error/faliures.dart';
import 'package:eagle_weather_v2/core/usecases/usecase.dart';
import 'package:eagle_weather_v2/features/weather/domain/entities/weather.dart';
import 'package:eagle_weather_v2/features/weather/domain/repositories/weather_repository.dart';
import 'package:equatable/equatable.dart';

class GetCurrentWeather implements UseCase<Weather, Params>{

  final WeatherRepository repository;

  GetCurrentWeather(this.repository);

  @override
  Future<Either<Failure, Weather>> call(Params params) async {
    return await repository.getCurrentWeather(params.city);

  }

}

class Params extends Equatable {
  final String city;

  Params({required this.city});

  @override
  List<Object> get props => [city];
}