import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:clothing_app/view/pages/BottomNavigationBar/BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constant/ImagesManager.dart';

class Advanced_Drawer extends StatefulWidget {
  @override
  _Advanced_DrawerState createState() => _Advanced_DrawerState();
}

class _Advanced_DrawerState extends State<Advanced_Drawer> {
  final _advancedDrawerController = AdvancedDrawerController();
  late SharedPreferences logindata;
  late String Name;
  late String Email;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      Name = logindata.getString('Name')!;
      Email = logindata.getString('Email')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.white,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      disabledGestures: false,
      childDecoration: const BoxDecoration(

        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(-20, 40)),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Scaffold(
        // appBar: AppBar(
        //     backgroundColor: Colors.transparent,
        //     elevation: 0,
        //     centerTitle: true,
        //     title: Text(
        //       '15/2 New Texas',
        //       style: TextStyle(color: Colors.black, fontSize: 14),
        //     ),
        //     leading:  IconButton(
        //           icon:
        //             SvgPicture.asset(ImagesManager.Drawer),
        //             color: Colors.black,
        //           onPressed: _handleMenuButtonPressed,
        //         ),
        // ),
        body: Bottom_Navigation_Bar(),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
              // textColor: Colors.white,
              // iconColor: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  /*Container(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              ImagesManager.ProfileImage,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alex Nikiforov',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Fashion Designer',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: ColorManager.SecondaryTextColor),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                AppRouter.goTo(screenName: ScreenName.Profile);
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ),*/
                  ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        ImagesManager.ProfileImage,
                      ),
                    ),
                    title: Text(
                      'Alex Nikiforov',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      'Fashion Designer',
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorManager.SecondaryTextColor),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios, color: Colors.black,),
                    onTap: () {
                      AppRouter.goTo(screenName: ScreenName.Profile);
                    },

                  ),
                  /*SizedBox(
                    height: 55,
                  ),*/
                  Spacer(flex: 1,),
                  ListTile(
                    onTap: () {
                      AppRouter.goTo(screenName: ScreenName.Favorite);
                    },
                    leading: SvgPicture.asset(ImagesManager.Myfavorites),
                    title: Text(
                      'My favorites',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      AppRouter.goTo(screenName: ScreenName.Wallets);
                    },
                    leading: SvgPicture.asset(ImagesManager.Wallets),
                    title: Text(
                      'Wallets',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset(ImagesManager.MyOrders),
                    title: Text(
                      'My orders',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset(ImagesManager.AboutUs),
                    title: Text(
                      'About us',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset(ImagesManager.PrivacyPolicy),
                    title: Text(
                      'Privacy policy',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      AppRouter.goTo(screenName: ScreenName.Settings);
                    },
                    leading: SvgPicture.asset(ImagesManager.Settings),
                    title: Text(
                      'Settings',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  /* SizedBox(
                      height: 90,
                    ),*/
                  Spacer(flex: 2,),
                  ListTile(
                    onTap: () {
                      logindata.setBool('login', true);
                      AppRouter.goToAndRemove(screenName: ScreenName.Login);
                    },
                    leading: SvgPicture.asset(ImagesManager.LogOut),
                    title: Text(
                      'Log out',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(flex: 2,),
                  Padding(padding: EdgeInsets.only(left: 15),
                    child: Image.asset(
                      ImagesManager.Logo,
                      height: 60,
                      width: 50,
                    ),
                  ),
                  SizedBox(height: 5,)
                ],
              )
          ),
        ),
      ),
    );
  }
}
