import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/MyWalletsModel.dart';

class Wallets extends StatefulWidget {
  const Wallets({super.key});

  @override
  State<Wallets> createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  late PageController _pageController;
  int _currentPage = 1;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.BackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'My Wallets',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              AppRouter.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SizedBox(
              height: 157,
              width: 275,
              child: PageView.builder(
                  onPageChanged: (int currentPage) {
                    setState(() {
                      _currentPage = currentPage;
                    });
                  },
                  controller: _pageController,
                  itemCount: onbording2List.length,
                  itemBuilder: (context, i) {
                    return Image.asset(
                      onbording2List[i].image!,
                      // width: 324,
                      fit: BoxFit.cover,
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 160),
            child: Row(
              children: [
                OnBoardingIndicator(selected: _currentPage == 0),
                OnBoardingIndicator(selected: _currentPage == 1),
                OnBoardingIndicator(selected: _currentPage == 2),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Recent transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 420,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: mywalletsmodel.length,
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
                itemBuilder: (context, i) {
                  return Container(
                    height: 92,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 73,
                              width: 84,
                              decoration: BoxDecoration(
                                  color: ColorManager.ImageBackgroundColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            Positioned(
                              left: 15,
                              child: Image.asset(
                                mywalletsmodel[i].image!,
                                height: 76,
                                width: 51,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              mywalletsmodel[i].title!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              mywalletsmodel[i].date!,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorManager.SecondaryTextColor),
                            )
                          ],
                        ),
                        Text(
                          mywalletsmodel[i].price!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: ColorManager.MainColor),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OnBoardingIndicator extends StatelessWidget {
  final bool selected;

  const OnBoardingIndicator({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 15,
      decoration: BoxDecoration(
          color:
              selected ? ColorManager.MainColor : ColorManager.SecondaryColor,
          shape: BoxShape.circle),
    );
  }
}
