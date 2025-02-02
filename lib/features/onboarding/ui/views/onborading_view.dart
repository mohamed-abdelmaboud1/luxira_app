import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:luxira_app/core/utils/app_images.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboradingView extends HookWidget {
  const OnboradingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                PageViewItem(
                  image: Assets.assetsImagesOnborading1,
                  title: 'Title 1',
                  description: 'Description 1',
                ),
                PageViewItem(
                  image: Assets.assetsImagesOnborading2,
                  title: 'Title 2',
                  description: 'Description 2',
                ),
                PageViewItem(
                  image: Assets.assetsImagesOnborading3,
                  title: 'Title 3',
                  description: 'Description 3',
                ),
              ],
            ),
          ),
          Gap(20),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 24.0,
                dotHeight: 16.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.indigo),
          ),
          Gap(40),
        ],
      ),
    );
  }
}

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(height: 25),
        Text(title, style: AppStyles.bold20),
        SizedBox(height: 24),
        Text(
          description,
          style: AppStyles.regular16,
        ),
      ],
    );
  }
}

class PageViewItemModel {
  final String title;
  final String description;
  final String image;

  PageViewItemModel(
      {required this.title, required this.description, required this.image});
}
