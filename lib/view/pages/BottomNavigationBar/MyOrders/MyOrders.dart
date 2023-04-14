import 'dart:ui';

import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/data/model/MyOrderModel.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'My Orders',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          bottom: TabBar(
            indicatorWeight: 5,
            labelColor: ColorManager.MainColor,
            labelStyle: TextStyle(fontSize: 14),
            unselectedLabelColor: ColorManager.SecondaryTextColor,
            unselectedLabelStyle: TextStyle(fontSize: 14),
            indicatorColor: ColorManager.MainColor,

            tabs: [
              Tab(child: Text('Completed')),
              Tab(child: Text('Cancelled')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: myordermodel.length,
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
                                  myordermodel[i].image!,
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
                                myordermodel[i].title!,
                                style: TextStyle(
                                    color: ColorManager.SecondaryTextColor,
                                    fontSize: 14),
                              ),
                              Text(
                                myordermodel[i].price!,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Text(
                            myordermodel[i].date!,
                            style: TextStyle(
                                fontSize: 12,
                                color: ColorManager.SecondaryTextColor),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
