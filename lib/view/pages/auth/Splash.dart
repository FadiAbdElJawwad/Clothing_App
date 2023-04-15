import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/ImagesManager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      AppRouter.goToAndRemove(screenName: ScreenName.Onbording);
    });
    return Scaffold(
      body: Center(
          child: Image.asset(
        ImagesManager.Logo,
        height: 120,
        width: 104,
      )),
    );
  }
}
