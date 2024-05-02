import 'dart:convert';

import 'package:firstproject/ui/api/weather_model.dart';
import 'package:http/http.dart' as http;
class WeatherData{


Future<Weather> getData(var latitude, var longitude) async {
var uricall = Uri.parse('http://api.weatherapi.com/v1/current.json?key=e0bfcec54a484eb8b09132443240105&q=$latitude,$longitude&aqi=no');

// ignore: unused_local_variable
var response = await http.get(uricall);
var body = jsonDecode(response.body);
return Weather.fromJson(body);
}

}