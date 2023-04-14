import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/core/constant/ImagesManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool val1 = true;
  bool val2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.BackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 17),
                        child: SvgPicture.asset(ImagesManager.EmailSupport),
                      ),
                      Text(
                        'Email Support',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: SvgPicture.asset(ImagesManager.FAQ)),
                      Text(
                        'FAQ',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: SvgPicture.asset(ImagesManager.PrivacyPolicy)),
                      Text(
                        'Privacy Stetesment',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 17),
                        child: Icon(
                          Icons.notifications,
                          color: ColorManager.MainColor,
                        ),
                      ),
                      Text(
                        'Notification',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Switch(
                  activeTrackColor: ColorManager.MainColor,
                  activeColor: Colors.white,
                  value: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = value;
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 17),
                          child: SvgPicture.asset(ImagesManager.Update)),
                      Text(
                        'Update',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Switch(
                  activeTrackColor: ColorManager.MainColor,
                  activeColor: Colors.white,
                  value: val2,
                  onChanged: (value) {
                    setState(() {
                      val2 = value;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
