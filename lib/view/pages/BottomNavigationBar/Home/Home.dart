import 'package:clothing_app/core/constant/ImagesManager.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constant/ColorManager.dart';
import '../../../../data/model/HomeModel.dart';
import '../../../shared/BottomSheet.dart';
import '../../../shared/TextField.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.BackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '15/2 New Texas',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(ImagesManager.Drawer),
          color: Colors.black,
          onPressed: _handleMenuButtonPressed,
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(ImagesManager.Notification),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
             
              Text(
                'Explore',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'best Outfits for you',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 25,
              ),
              Text_Field(
                hint: 'Search items...',
                PrefixIcon: Icon(Icons.search),
                SuffixIcon: IconButton(
                    iconSize: 5,
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        context: context,
                        builder: (context) {
                          return Bottom_Sheet();
                        },
                      );
                    },
                    icon: Container(
                        height: 43,
                        width: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: ColorManager.MainColor,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            ImagesManager.Filter,
                          ),
                        ))),
                obscureText: false,
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 72,
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(width: 17),
                  scrollDirection: Axis.horizontal,
                  itemCount: homemodel.length,
                  itemBuilder: (context, i) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white),
                      height: 75,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            homemodel[i].image!,
                            height: 37,
                          ),
                          Text(homemodel[i].title!)
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        AppRouter.goTo(screenName: ScreenName.Search);
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                height: 190,
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(width: 17),
                  scrollDirection: Axis.horizontal,
                  itemCount: newarrivalmodel.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        AppRouter.goTo(
                            screenName: ScreenName.CasualHenleyShirts);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        height: 190,
                        width: 155,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              newarrivalmodel[i].image!,
                              height: 132,
                              width: 100,
                            ),
                            Text(newarrivalmodel[i].title!),
                            Text(
                              newarrivalmodel[i].price!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
