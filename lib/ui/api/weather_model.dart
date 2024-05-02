
// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

class Weather {
var cityName;
var icon;
var condition;
var temp;
var wind;
var humidity;
var wind_dir;
var gust;
var uv;
var pressure;
var precription;
var last_updated;

Weather({
  required this.cityName,
  required this.icon,
  required this.condition,
  required this.temp,
  required this.wind,
  required this.humidity,
  required this.wind_dir,
  required this.gust,
  required this.uv,
  required this.pressure,
  required this.precription,
  required this.last_updated,
  
  
  });

Weather.fromJson(Map<String, dynamic> json) {
  cityName = json['location']['name'];
  icon = json ['current']['condition']['icon'];
  condition = json ['current']['condition']['text'];
  temp = json ['current']['temp_c'];
  wind = json ['current']['wind_mph'];
humidity = json ['current']['humidity'];
wind_dir = json ['current']['wind_dir'];
gust = json['current']['gust_kph'];
uv = json ['current']['uv'];
precription = json ['current']['precip_mm'];
pressure = json ['current']['pressure_mb'];
last_updated = json ['current']['last_updated'];

}

}