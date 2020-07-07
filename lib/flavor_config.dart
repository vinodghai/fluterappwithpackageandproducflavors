import 'package:flutter/cupertino.dart';

enum Flavor { DEV, QA, PROD }

class FlavorValues {
  String baseUrl;
  String name;
  Color color;

  FlavorValues({@required this.baseUrl, this.name, this.color});
}

class FlavorConfig {

  final Flavor flavor;
  final FlavorValues flavorValues;
  static FlavorConfig instance;

  FlavorConfig._internal({@required this.flavor, @required this.flavorValues});

  factory FlavorConfig(
      {@required Flavor flavor, @required FlavorValues values}) {
    if (instance == null)
      instance = FlavorConfig._internal(flavor: flavor, flavorValues: values);

    return instance;
  }

  static bool isDev() => instance.flavor == Flavor.DEV;

  static bool isQA() => instance.flavor == Flavor.QA;

  static bool isProd() => instance.flavor == Flavor.PROD;
}
