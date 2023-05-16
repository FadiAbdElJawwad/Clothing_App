import 'package:clothing_app/View/Shared/Button.dart';
import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/core/constant/ImagesManager.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 137,
          // ),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 83),
            child: Stack(
              children: [
                Image.asset(ImagesManager.CheckBorder, fit: BoxFit.contain),
                Positioned(
                  top: 63,
                  left: 63,
                  child: Image.asset(ImagesManager.Check),
                )
              ],
            ),
          ),
          // SizedBox(
          //   height: 85,
          // ),
          Spacer(
            flex: 1,
          ),
          Text(
            'Congratulation!!!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Payment is the transfer of money \n services in exchange product or Payments ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: ColorManager.SecondaryTextColor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 71),
            child: Button(
              text: 'Get your receipt',
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 71),
              child: ElevatedButton(
                onPressed: () {
                  AppRouter.goToAndRemove(
                      screenName: ScreenName.Advanced_Drawer);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.SecondaryColor,
                  shape: const StadiumBorder(),
                  fixedSize: Size(double.maxFinite, 59),
                ),
                child: Text('Back to Home',
                    style: const TextStyle(
                        fontSize: 16, color: ColorManager.MainColor)),
              )),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
