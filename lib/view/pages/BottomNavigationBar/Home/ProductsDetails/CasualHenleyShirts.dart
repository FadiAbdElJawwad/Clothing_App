import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/core/constant/ImagesManager.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import '../../../../Shared/Button.dart';
import 'package:like_button/like_button.dart';

class CasualHenleyShirts extends StatefulWidget {
  const CasualHenleyShirts({Key? key}) : super(key: key);

  @override
  
  State<CasualHenleyShirts> createState() => _CasualHenleyShirtsState();
}

class _CasualHenleyShirtsState extends State<CasualHenleyShirts> {

  List <bool>isSelected = [false, true, false, false];
  List <int> colorList = [0xFFBEE8EA, 0xFF141B4A, 0xFFCEE3F5, 0xFFF4E5C3];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.ImageBackgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          AppRouter.back();
                        },
                        icon: Icon(Icons.arrow_back_ios_new_outlined)
                    ),
                    Container(
                        height: 40, width: 40,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child:
                        LikeButton(
                          likeBuilder: (isLiked) {
                            return Icon(
                              Icons.favorite,
                              color: isLiked ? Colors.red : Colors.grey,
                            );
                          },
                          size: 25,
                        )
                    )

                  ],
                ),
              ),
              Container(
                  height: 363, width: 272,
                  child: Image.asset(
                    ImagesManager.CasualHenleyShirts, fit: BoxFit.cover,)
              ),
              Container(
                  height: 355,
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Casual Henley Shirts', style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),),
                            Text('\$175', style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'A Henley shirt is a collarless pullover shirt, by a round \n neckline and a placket about 3 to 5 inches (8 to 13 cm) \n long and usually having 2–5 buttons.',
                          style: TextStyle(fontSize: 12,
                              color: ColorManager.SecondaryTextColor),
                        ),
                        SizedBox(height: 25,),
                        Text('Colors', style: TextStyle(fontSize: 14,
                            color: ColorManager.SecondaryTextColor),),
                        SizedBox(height: 20),

                        Row(
                          children: List.generate(isSelected.length, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  for (int i = 0; i < isSelected.length; i++) {
                                    if (i == index) {
                                      isSelected[i] = true;
                                    } else {
                                      isSelected[i] = false;
                                    }
                                  }
                                });
                              },

                              child: Container(
                                margin: EdgeInsets.all(2),
                                width: isSelected[index] ? 24 : 30,
                                height: isSelected[index] ? 24 : 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color: isSelected[index] ? ColorManager
                                            .MainColor : Colors.transparent
                                    ),
                                    shape: BoxShape.circle
                                ),

                                child: Padding(padding: EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(colorList[index])
                                    ),
                                  ),),
                              ),
                            );
                          }),
                        ),

                        SizedBox(height: 20),

                        Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Button(
                              text: 'Add to Cart',
                              onTap: () {
                                AppRouter.goTo(screenName: ScreenName.MyCart);
                              },
                            )
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}
