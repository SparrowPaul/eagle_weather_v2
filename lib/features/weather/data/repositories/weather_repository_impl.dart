import 'package:dartz/dartz.dart';
import 'package:eagle_weather_v2/core/error/faliures.dart';
import 'package:eagle_weather_v2/core/network/network_info.dart';
import 'package:eagle_weather_v2/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:eagle_weather_v2/features/weather/domain/entities/weather.dart';
import 'package:eagle_weather_v2/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {


  final WeatherRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  WeatherRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String city) {
    // TODO: implement getCurrentWeather
    throw UnimplementedError();
  }



}