import 'package:clothing_app/core/constant/ImagesManager.dart';
import 'package:clothing_app/view/pages/BottomNavigationBar/Favorite/Favorite.dart';
import 'package:clothing_app/view/pages/BottomNavigationBar/MyOrders/MyOrders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constant/ColorManager.dart';
import 'Home/Home.dart';
import 'Profile/Profile.dart';

// ignore: must_be_immutable
class Bottom_Navigation_Bar extends StatefulWidget {
  // const Bottom_Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Navigation_Bar> createState() => _Bottom_Navigation_BarState();
}

class _Bottom_Navigation_BarState extends State<Bottom_Navigation_Bar> {
  int _currentIndex = 0;
  Widget currentScreen = Home();

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          height: 85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Home();
                    _currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                        visible: _currentIndex == 0,
                        child: Container(
                          height: 7,
                          width: 13,
                          decoration: BoxDecoration(
                              color: ColorManager.MainColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  bottomRight: Radius.circular(7))),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      _currentIndex == 0
                          ? ImagesManager.SelectedHome
                          : ImagesManager.Home,
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                    currentScreen = MyOrders();
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                        visible: _currentIndex == 1,
                        child: Container(
                          height: 7,
                          width: 13,
                          decoration: BoxDecoration(
                              color: ColorManager.MainColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  bottomRight: Radius.circular(7))),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      _currentIndex == 1
                          ? ImagesManager.SelectedBuy
                          : ImagesManager.Buy,
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Favorite();
                    _currentIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                        visible: _currentIndex == 2,
                        child: Container(
                          height: 7,
                          width: 13,
                          decoration: BoxDecoration(
                              color: ColorManager.MainColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  bottomRight: Radius.circular(7))),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Icon(
                      _currentIndex == 2
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: ColorManager.MainColor,
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Profile();
                    _currentIndex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                        visible: _currentIndex == 3,
                        child: Container(
                          height: 7,
                          width: 13,
                          decoration: BoxDecoration(
                              color: ColorManager.MainColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7),
                                  bottomRight: Radius.circular(7))),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      _currentIndex == 3
                          ? ImagesManager.SelectedProfile
                          : ImagesManager.Profile,
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
