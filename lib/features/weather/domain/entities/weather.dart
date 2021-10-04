import 'package:equatable/equatable.dart';

class Weather extends Equatable{

  final  temp;
  final  pressure;
  final  humidity;
  final  temp_max;
  final  temp_min;


  Weather(
      this.temp, this.pressure, this.humidity, this.temp_max, this.temp_min);

  @override
  // TODO: implement props
  List<Object> get props =>  [temp, pressure,humidity,temp_max, temp_min];


}