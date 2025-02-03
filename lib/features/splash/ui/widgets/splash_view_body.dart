import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luxira_app/core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FadeInDown(
          duration: const Duration(seconds: 2),
          child: Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(Assets.assetsImagesSplashTopRight),
          ),
        ),
        ZoomIn(
          duration: const Duration(seconds: 2),
          child: Image.asset(Assets.assetsImagesAppLogoPng)),
        FadeInUp(
          duration: const Duration(seconds: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.assetsImagesSplashDownLeft),
              SvgPicture.asset(Assets.assetsImagesSplashDownRight),
            ],
          ),
        ),
      ],
    );
  }
}
