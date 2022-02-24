class AirQuality {
  final double pMOne;
  final double pMTwoPointFive;
  final double pMTen;
  final double humidity;
  final double temperature;

  const AirQuality({
    required this.pMOne,
    required this.pMTwoPointFive,
    required this.pMTen,
    required this.humidity,
    required this.temperature,
  });

  factory AirQuality.fromJson({required Map<String, dynamic> json}) {
    return AirQuality(
      pMOne: double.parse(json['feeds'][0]['field3']), // of 500
      pMTwoPointFive: double.parse(json['feeds'][0]['field4']), // of 500
      pMTen: double.parse(json['feeds'][0]['field5']), // of 500
      humidity: double.parse(json['feeds'][0]['field2']), // of 100
      temperature: double.parse(json['feeds'][0]['field1']), // of 100
    );
  }
}
