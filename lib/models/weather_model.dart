class Weather {
  late String cityName;
  late double temperature;  // Change the type to double
  late String mainCondition;

  Weather(
      {required this.cityName,
      required this.temperature,
      required this.mainCondition});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        cityName: json['name'],
        temperature: json['main']['temp'].toDouble(),  // Now it correctly assigns a double
        mainCondition: json['weather'][0]['main']);
  }
}
