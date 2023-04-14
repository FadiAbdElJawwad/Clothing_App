import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/core/constant/ImagesManager.dart';
import 'package:clothing_app/data/model/ProfileModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late SharedPreferences logindata;
  late String Name;
  late String Email;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      Name = logindata.getString('Name')!;
      Email = logindata.getString('Email')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: ColorManager.BackgroundColor,
      body: Stack(
        children: [
          Image.asset(ImagesManager.ProfileBackground),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 140,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Profile',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        ImagesManager.ProfileImage,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Alex Nikiforov',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'alex@msn.com',
                      style: TextStyle(
                          fontSize: 16, color: ColorManager.SecondaryTextColor),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 117,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: profilemodel.length,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                        itemBuilder: (context, i) {
                          return Container(
                            height: 117,
                            width: 106,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: profilemodel[i].backgroundcolor,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                          profilemodel[i].image!),
                                    )),
                                Text(
                                  profilemodel[i].title!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorManager.SecondaryTextColor),
                                ),
                                Text(
                                  profilemodel[i].number!,
                                  style: TextStyle(fontSize: 14),
                                )
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
                      children: [
                        Text(
                          'Personal Information',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 195,
                        width: 333,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffF0F0F2)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Name :',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorManager.SecondaryTextColor),
                                  ),
                                  Text(
                                    'Alex Nikiforov',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Email :',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorManager.SecondaryTextColor),
                                  ),
                                  Text(
                                    'alex@msn.com',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Location :',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorManager.SecondaryTextColor),
                                  ),
                                  Text(
                                    'San Diego',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Zip Code :',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorManager.SecondaryTextColor),
                                  ),
                                  Text(
                                    '1200',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Phone Number :',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorManager.SecondaryTextColor),
                                  ),
                                  Text(
                                    '(+1)5484 4757 84',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
