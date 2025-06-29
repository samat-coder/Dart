import 'dart:async';
Future<String> fetchWeather() async {
  print("Fetching weather data...");
  await Future.delayed(const Duration(seconds: 2)); 
  print("Processing data...");
  await Future.delayed(const Duration(seconds: 2)); 
  return "Sunny, 25°C";
}

Future<void> loadWeather() async {
  print("Starting weather fetch...");
  var weatherData = await fetchWeather(); 
  print("Weather data loaded successfully.");
  print("Current Weather: $weatherData");
}

void main() async {
  await loadWeather();
}
