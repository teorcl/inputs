class CountryModel {
  final String name;
  final String code;
  final String dialCode;

  CountryModel({
    required this.name,
    required this.code,
    required this.dialCode,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'],
      code: json['code'],
      dialCode: json['dial_code'],
    );
  }
}
