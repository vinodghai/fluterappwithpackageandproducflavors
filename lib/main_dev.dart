import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main_common.dart';

void main() {
  FlavorValues flavorValues =
  FlavorValues(baseUrl: "null", name: "Dev", color: Colors.green);

  FlavorConfig(flavor: Flavor.DEV, values: flavorValues);

  runApp(MyApp());
}

