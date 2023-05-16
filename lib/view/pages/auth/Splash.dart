import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constant/ImagesManager.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  late SharedPreferences logindata;
  late bool newuser;

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // AppRouter.goToAndRemove(screenName: ScreenName.Onbording);
      newuser == false ? AppRouter.goToAndRemove(
          screenName: ScreenName.Advanced_Drawer) :
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