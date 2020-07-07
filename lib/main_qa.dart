import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main_common.dart';

void main() {
  FlavorValues flavorValues =
      FlavorValues(baseUrl: "null", name: "QA", color: Colors.red);

  FlavorConfig(flavor: Flavor.QA, values: flavorValues);

  runApp(MyApp());
}
