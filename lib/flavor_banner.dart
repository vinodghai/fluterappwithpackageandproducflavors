import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'flavor_config.dart';

class FlavorBanner extends StatelessWidget {
  final Widget child;
  final BannerConfig bannerConfig = _getDefaultBanner();

  FlavorBanner({@required this.child});

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.isProd()) return child;
    return Stack(
      children: <Widget>[child, _buildBanner(context)],
    );
  }

  static BannerConfig _getDefaultBanner() {
    return BannerConfig(
        bannerName: FlavorConfig.instance.flavorValues.name,
        bannerColor: FlavorConfig.instance.flavorValues.color);
  }

  Widget _buildBanner(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: CustomPaint(
        painter: BannerPainter(
            message: bannerConfig.bannerName,
            textDirection: Directionality.of(context),
            layoutDirection: Directionality.of(context),
            location: BannerLocation.topStart,
            color: bannerConfig.bannerColor),
      ),
    );
  }
}

class BannerConfig {
  final String bannerName;
  final Color bannerColor;

  BannerConfig(
      {@required String this.bannerName, @required Color this.bannerColor});
}
