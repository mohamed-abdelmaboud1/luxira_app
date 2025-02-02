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
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(Assets.assetsImagesSplashTopRight),
        ),
        Image.asset(Assets.assetsImagesAppLogoPng),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.assetsImagesSplashDownLeft),
            SvgPicture.asset(Assets.assetsImagesSplashDownRight),
          ],
        ),
      ],
    );
  }
}
