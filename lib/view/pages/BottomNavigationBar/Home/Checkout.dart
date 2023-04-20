import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/core/constant/ImagesManager.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import '../../../../routes/app_router.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _val = 1;
  // bool val1 = false;
  // bool val2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.BackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Checkout',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(flex: 2,
                  child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                /*child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      checkColor: Colors.white,
                      fillColor:
                          MaterialStatePropertyAll(ColorManager.MainColor),
                      value: val1,
                      onChanged: (value) {
                        setState(() {
                          val1 = value!;
                        });
                      },
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '(342)  4522019',
                          style: TextStyle(
                              fontSize: 12,
                              color: ColorManager.SecondaryTextColor),
                        ),
                        Text('220  New York',
                            style: TextStyle(
                                fontSize: 12,
                                color: ColorManager.SecondaryTextColor)),
                      ],
                    ),
                    Image.asset(
                      ImagesManager.Edit,
                    )
                  ],
                ),*/

                child: Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 10 ,right: 20),
                  child: RadioListTile(
                      value: 1,
                      groupValue: _val,
                      onChanged: (val){
                        setState(() {
                          _val = val! ;
                        });
                      },
                      activeColor: ColorManager.MainColor,

                      title: Text(
                        'Home',
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        '(342)  4522019 \n 220  New York',
                        style: TextStyle(
                            fontSize: 12,
                            color: ColorManager.SecondaryTextColor),
                      ),
                      secondary: IconButton(onPressed: (){},
                        icon: Image.asset(
                          ImagesManager.Edit,),)
                  ),
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Expanded(flex: 2,
                child: Container(
                // height: 92,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),

                child: Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 10 ,right: 20),
                  child: RadioListTile(
                      value: 2,
                      groupValue: _val,
                      onChanged: (val){
                        setState(() {
                          _val = val! ;
                        });
                      },
                      activeColor: ColorManager.MainColor,
                      title: Text(
                        'Office',
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        '(342)  4522019 \n 220  Montmartre,paris',
                        style: TextStyle(
                            fontSize: 12,
                            color: ColorManager.SecondaryTextColor),
                      ),
                      secondary: IconButton(onPressed: (){},
                        icon: Image.asset(
                          ImagesManager.Edit,),)
                  ),
                ),

              ),
              ),
            /*  SizedBox(
                height: 35,
              ),*/
              Spacer(),
              Text(
                'Billing information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(flex: 3,
                child: Container(
                // height: 135,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Delivery Fee     : ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorManager.SecondaryTextColor)),
                              Text(
                                '\$50',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Subtotal            :',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorManager.SecondaryTextColor)),
                              Text(
                                '\$740',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // SizedBox(height: 8,),
                          Divider(),
                          // SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Total                   :',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: ColorManager.SecondaryTextColor)),
                              Text(
                                '\$790',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ))
              ),
              ),
              /*SizedBox(
                height: 35,
              ),*/
              Spacer(),
              Text(
                'Payment Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Image.asset(ImagesManager.ApplePay),
                  ),
                  Container(
                    height: 55,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Image.asset(
                        ImagesManager.Visa,
                        height: 26,
                        width: 43,
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Image.asset(
                        ImagesManager.MasterCard,
                        height: 26,
                        width: 43,
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Image.asset(
                        ImagesManager.PayPal,
                        height: 26,
                        width: 21,
                      ),
                    ),
                  ),
                ],
              ),

              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      AppRouter.goTo(screenName: ScreenName.Payment);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.MainColor,
                      shape: const StadiumBorder(),
                      fixedSize: Size(double.maxFinite, 59),
                    ),
                    icon: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: ColorManager.MainColor,
                      ),
                    ),
                    label: Text('Swipe for Payment',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white)),
                  )),
              SizedBox(height: 5,)
            ],
          ),
        )
    );
  }
}
