import 'package:bookly_app/core/constant/colors.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presention/views/home_view.dart';
import 'package:bookly_app/features/splash/presention/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;
  @override
  void initState() {
    super.initState();
    initSliderSplashView();
    // single responsapility
    navigatToHome();
  }



  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    return Column(
      // streach cuz i wana take all width of screen
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: 200),
        Image.asset(AssetsData.logo),
        SlidingText(sliderAnimation: sliderAnimation),
      ],
    );
  } 

  void initSliderSplashView() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sliderAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

    void navigatToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }
}
