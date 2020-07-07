import 'package:calculatorflutterpackage/MyWidget.dart';
import 'package:calculatorflutterpackage/flutterpackage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flavor_banner.dart';
import 'flavor_config.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FlavorBanner(
        child: Scaffold(
          appBar: AppBar(title: Text("Flavors")),
          body: Center(
              //Widget is coming from custom package
              child: RedText(
            text: "Flavor: ${FlavorConfig.instance.flavorValues.name}",
          )),
        ),
      ),
    );
  }

  //visibility of classes from custom package
  void _packageClasses() {
    Calculator calculator = new Calculator();
    calculator.addOne(98);
  }
}
