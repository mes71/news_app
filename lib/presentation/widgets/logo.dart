import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:news_app/data/config/assets.dart';
import 'package:news_core/news_core.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, required this.category});

  final NewsCategory category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white54,
      ),
      child: SvgPicture(
        AssetBytesLoader(getAssets(category)),
        width: 24,
        height: 24,

      ),
    );
  }

  String getAssets(NewsCategory category) {
    return switch (category) {
      NewsCategory.apple => Assets.iconsAppleVec,
      NewsCategory.tesla => Assets.iconsTeslaVec,
      NewsCategory.microsoft => Assets.iconsMicrosoftVec,
      NewsCategory.google => Assets.iconsGoogleVec,
    };
  }
}
