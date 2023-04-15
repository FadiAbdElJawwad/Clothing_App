import 'package:clothing_app/View/Shared/Button.dart';
import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import '../../../../data/model/MyCartModel.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int counter = 1;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.BackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'My Cart',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                AppRouter.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
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
                                  mycartmodel[i].image!,
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
                                mycartmodel[i].title!,
                                style: TextStyle(
                                    color: ColorManager.SecondaryTextColor,
                                    fontSize: 14),
                              ),
                              Text(
                                mycartmodel[i].price!,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      ColorManager.SecondaryColor),
                                  minimumSize:
                                      MaterialStatePropertyAll(Size(25, 20)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))))),
                              onPressed: () {
                                if (tempArray.contains(mycartmodel[i])) {
                                  tempArray.add(mycartmodel[i]);
                                }
                                setState(() {
                                  counter++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 10,
                                color: ColorManager.MainColor,
                              )),
                          Text('$counter'),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      ColorManager.SecondaryColor),
                                  minimumSize:
                                      MaterialStatePropertyAll(Size(25, 20)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))))),
                              onPressed: () {
                                setState(() {
                                  counter--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                size: 10,
                                color: ColorManager.MainColor,
                              )),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: mycartmodel.length),

              // SizedBox(
              //   height: 150,
              // ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal   :',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    '\$740',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38),
                child: Button(
                  text: 'Checkout',
                  onTap: () {
                    AppRouter.goTo(screenName: ScreenName.Checkout);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }
}
