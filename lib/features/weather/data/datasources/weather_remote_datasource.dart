import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:eagle_weather_v2/features/weather/data/models/weather_model.dart';

abstract class WeatherRemoteDataSource {

  Future<WeatherModel> getWeather(String city);
}


class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource{

  final http.Client client;

  WeatherRemoteDataSourceImpl({required this.client});


  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=6cbee30e3b0163be5df22eda4a538e66"),);

    if (result.statusCode != 200) {
      throw Exception();
    }

    return parsedJson(result.body);
  }



  WeatherModel parsedJson(final response) {
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded["main"];

    return WeatherModel.fromJson(jsonWeather);
  }
}