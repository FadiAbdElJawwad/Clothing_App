import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/router_genrator.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const Clothing());
}

class Clothing extends StatelessWidget {
  const Clothing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenarator.onGenerateRoute,
      initialRoute: ScreenName.SplashScreen,
      navigatorKey: AppRouter.navigatorKey,

      // home: SplashScreen(),
    );
  }
}
