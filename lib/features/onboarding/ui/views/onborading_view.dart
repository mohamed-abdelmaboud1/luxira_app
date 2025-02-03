import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:luxira_app/core/utils/app_images.dart';
import 'package:luxira_app/features/onboarding/ui/widgets/page_view_item.dart';

import '../../data/page_view_item_model.dart';

class OnboradingView extends HookWidget {
  const OnboradingView({super.key});
  static const String id = 'OnboardingView';
  
  @override
  Widget build(BuildContext context) {
    final  controller = usePageController();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                PageViewItem(
                  pageViewItemModel: PageViewItemModel(
                    image: Assets.assetsImagesOnborading1,
                    title: 'Welcome to the world of easy shopping',
                    description: 'You can explore thousands of products easily and quickly; we are here to make your shopping experience enjoyable and smooth.',
                  ),
                  controller: controller,
                  pageIndex: 0,
                ),
                PageViewItem(
                  pageViewItemModel: PageViewItemModel(
                    image: Assets.assetsImagesOnborading2,
                    title: 'Exclusive offers tailored for you',
                    description: 'Get exclusive deals and discounts that suit your taste. Enjoy a personalized shopping experience that meets all your needs.',
                  ),
                  controller: controller,
                  pageIndex: 1,
                ),
                PageViewItem(
                  pageViewItemModel: PageViewItemModel(
                    image: Assets.assetsImagesOnborading3,
                    title: 'Secure and fast payment with a single touch',
                    description: 'Enjoy a smooth and secure payment experience with various payment options.\n Shop with confidence and pay effortlessly.',
                  ),
                  controller: controller,
                  pageIndex: 2,
                ),
               
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
