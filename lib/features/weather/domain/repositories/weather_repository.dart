import 'package:dartz/dartz.dart';
import 'package:eagle_weather_v2/core/error/faliures.dart';
import 'package:eagle_weather_v2/features/weather/domain/entities/weather.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, Weather>> getCurrentWeather(String city);

}