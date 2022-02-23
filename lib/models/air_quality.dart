class AirQuality {
  final int pMOne;
  final int pMTwoPointFive;
  final int pMTen;
  final double humidity;
  final int temperature;

  const AirQuality({
    required this.pMOne,
    required this.pMTwoPointFive,
    required this.pMTen,
    required this.humidity,
    required this.temperature,
  });

  factory AirQuality.fromJson({required Map<String, dynamic> json}) =>
      const AirQuality(
        pMOne: 475, // of 500
        pMTwoPointFive: 150, // of 500
        pMTen: 365, // of 500
        humidity: 22.8, // of 100
        temperature: 79, // of 100
      );
}
