import 'package:eagle_weather_v2/features/weather/domain/entities/weather.dart';

class WeatherModel extends Weather{


  WeatherModel(temp, pressure, humidity, temp_max, temp_min)
      : super(temp, pressure, humidity, temp_max, temp_min);


  factory WeatherModel.fromJson(Map<String, dynamic> json){
    return WeatherModel(
        json["temp"],
        json["pressure"],
        json["humidity"],
        json["temp_max"],
        json["temp_min"]
    );
  }

}