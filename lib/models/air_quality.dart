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
      pMOne: double.parse(json['feeds'][2]['field1']), // of 500
      pMTwoPointFive: double.parse(json['feeds'][3]['field1']), // of 500
      pMTen: double.parse(json['feeds'][4]['field1']), // of 500
      humidity: double.parse(json['feeds'][1]['field1']), // of 100
      temperature: double.parse(json['feeds'][0]['field1']), // of 100
    );
  }
}
