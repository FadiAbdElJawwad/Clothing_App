import 'package:flutter/material.dart';
import '../../../../core/constant/ColorManager.dart';
import '../../../../data/model/HomeModel.dart';
import '../../../../routes/app_router.dart';
import '../../../../routes/screen_name.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Favorite',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              AppRouter.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: newarrivalmodel.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                AppRouter.goTo(screenName: ScreenName.CasualHenleyShirts);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                // height: 190,
                // width: 155,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 132,
                          width: 145,
                          decoration: BoxDecoration(
                              color: ColorManager.ImageBackgroundColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        Positioned(
                          left: 20,
                          child: Image.asset(
                            newarrivalmodel[i].image!,
                            height: 120,
                            width: 95,
                          ),
                        ),
                        Positioned(
                            top: 5,
                            left: 110,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 15,
                              ),
                            ))
                      ],
                    ),
                    // Image.asset(
                    //   newarrivalmodel[i].image!,
                    //   height: 132,
                    //   width: 100,
                    // ),
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
    );
  }
}
