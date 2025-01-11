import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/weather.dart';
import 'package:flutter_application_1/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherService = WeatherService('b2263b02e209f63c3a619fd705cc277a');
  Weather? _weather;
  String? _error;

  Future<void> _fetchWeather() async {
    try {
      String cityName = await _weatherService.getCurrentCity();
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather as Weather?;
        _error = null;
      });
    } catch (e) {
      setState(() {
        _error = 'Error fetching weather: $e';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _error != null
            ? Center(
                child: Text(
                  _error!,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              )
            : _weather == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Weather in ${_weather!.cityName}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '${_weather!.temperature}°C',
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: _fetchWeather,
                        child: const Text('Refresh Weather'),
                      ),
                    ],
                  ),
      ),
    );
  }
}
