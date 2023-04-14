import 'package:clothing_app/view/pages/Drawer/Wallets/Wallets.dart';
import 'package:flutter/material.dart';
import 'package:clothing_app/routes/screen_name.dart';
import '../View/Pages/auth/Login.dart';
import '../View/Pages/auth/Onbording.dart';
import '../View/Pages/auth/SignUp.dart';
import '../View/Pages/auth/Splash.dart';
import '../view/pages/BottomNavigationBar/BottomNavigationBar.dart';
import '../view/pages/BottomNavigationBar/Favorite/Favorite.dart';
import '../view/pages/BottomNavigationBar/Home/Checkout.dart';
import '../view/pages/BottomNavigationBar/Home/Home.dart';
import '../view/pages/BottomNavigationBar/Home/MyCart.dart';
 import '../view/pages/BottomNavigationBar/Home/Payment.dart';
import '../view/pages/BottomNavigationBar/Home/ProductsDetails/CasualHenleyShirts.dart';
import '../view/pages/BottomNavigationBar/Home/Search.dart';
import '../view/pages/BottomNavigationBar/MyOrders/MyOrders.dart';
import '../view/pages/BottomNavigationBar/Profile/Profile.dart';
import '../view/pages/Drawer/Advance_drawer.dart';
import '../view/pages/Drawer/Settings/Settings.dart';



class RouteGenarator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    var result;
    switch (settings.name) {
      case ScreenName.SplashScreen:
        result = const SplashScreen();
        break;
      case ScreenName.Onbording:
        result = Onbording();
        break;
      case ScreenName.Login:
        result = Login();
        break;
      case ScreenName.SignUp:
        result = SignUp();
        break;
      case ScreenName.Bottom_Navigation_Bar:
        result = Bottom_Navigation_Bar();
        break;
      case ScreenName.Home:
        result = Home();
        break;
        case ScreenName.Search:
        result = Search();
        break;
        case ScreenName.CasualHenleyShirts:
        result = CasualHenleyShirts();
        break;
        case ScreenName.MyCart:
        result = MyCart();
        break;
        case ScreenName.Checkout:
        result = Checkout();
        break;
        case ScreenName.Advanced_Drawer:
        result = Advanced_Drawer();
        break;
        case ScreenName.Payment:
        result = Payment();
        break;
        case ScreenName.Profile:
        result = Profile();
        break;
        case ScreenName.MyOrders:
        result = MyOrders();
        break;
        case ScreenName.Favorite:
        result = Favorite();
        break;
        case ScreenName.Settings:
        result = Settings();
        break;
        case ScreenName.Wallets:
        result = Wallets();
        break;

      default:
        result = const Scaffold(
          body: Center(
            child: Text('Wrong path'),
          ),
        );
    }
    return MaterialPageRoute(builder: (context) => result);
  }
}
