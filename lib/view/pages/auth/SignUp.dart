// ignore_for_file: unused_field
import 'package:clothing_app/core/extension/validinput.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../core/constant/ImagesManager.dart';
import '../../Shared/Button.dart';
import '../../Shared/TextField.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool val = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late SharedPreferences logindata;
  late bool newuser;

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);

    // if (newuser == false) {
    //   AppRouter.goToAndRemove(screenName: ScreenName.Advanced_Drawer);
    // }
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  late String _email;
  late String _password;
  late String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.BackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
              key: formstate,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        ImagesManager.Logo,
                        width: 55,
                        height: 60,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text_Field(
                      Validator: (value) {
                        /*  if (value!.isNullOrEmpty) {
                          return 'Please enter your name';
                        }
                        return '';*/
                        return value!.ValidatName;
                      },
                      onSaved: (value) => _name = value!,
                      Controller: nameController,
                      hint: 'Name',
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      PrefixIcon: Icon(
                        Icons.person,
                        color: ColorManager.MainColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text_Field(
                      Validator: (value) {
                        /*  if (value!.isNullOrEmpty) {
                          return 'Please enter your email address';
                        }
                        if (!value.isEmail) {
                          return 'Please enter a valid email address';
                        }
                        return '';*/
                        return value!.ValidatEmail;
                      },
                      onSaved: (value) => _email = value!,
                      Controller: emailController,
                      hint: 'Email',
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      PrefixIcon: Icon(
                        Icons.email,
                        color: ColorManager.MainColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text_Field(
                      Validator: (value) {
                        /*if (value!.isNullOrEmpty) {
                          return 'Please enter your password';
                        }
                        if (!value.isPassword) {
                          return 'Password must be at least 6 characters long';
                        }
                        return '';*/
                        return value!.ValidatPassword;
                      },
                      onSaved: (value) => _password = value!,
                      Controller: passwordController,
                      hint: 'Password',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      PrefixIcon: Icon(
                        Icons.lock,
                        color: ColorManager.MainColor,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        checkColor: Colors.white,
                        fillColor:
                            MaterialStatePropertyAll(ColorManager.MainColor),
                        value: val,
                        onChanged: (value) {
                          setState(() {
                            val = value!;
                          });
                        },
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'I accept all the ',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Terms & Conditions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 17,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 65),
                      child: Button(
                          text: 'Sign Up',
                          onTap: () {
                            String Email = emailController.text;
                            String Name = nameController.text;
                            String Password = passwordController.text;
                            if (formstate.currentState!.validate()) {
                              formstate.currentState!.save();
                              logindata.setBool('login', false);
                              AppRouter.goToAndRemove(
                                  screenName: ScreenName.Advanced_Drawer);
                            }
                            /*  if (Name != '' && Email != '' && Password != '') {
                              logindata.setBool('login', false);
                              logindata.setString('Email', Email);
                              logindata.setString('Name', Name);
                              AppRouter.goToAndRemove(
                                  screenName: ScreenName.Advanced_Drawer);
                            }*/
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 88,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Or',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 88,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                ImagesManager.Facebook,
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 34,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          width: 70,
                          height: 70,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                ImagesManager.Google,
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?  ",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextButton(
                            onPressed: () {
                              AppRouter.back();
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
