import 'package:clothing_app/core/extension/validinput.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constant/ColorManager.dart';
import '../../../core/constant/ImagesManager.dart';
import '../../Shared/Button.dart';
import '../../Shared/TextField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  // bool isLoggedIn = false;
  late SharedPreferences logindata;
  late bool newuser;

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);

    if (newuser == false) {
      AppRouter.goToAndRemove(screenName: ScreenName.Advanced_Drawer);
    }
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  // ignore: unused_field
  late String _email;
  // ignore: unused_field
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.BackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
            child: Form(
          // autovalidateMode: AutovalidateMode.always,
          key: formstate,
          child: SafeArea(child: Column(
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
                'Log in',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 35,
              ),
              Text_Field(
                Validator: (value) {
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
                height: 16,
              ),
              Text_Field(
                Validator: (value) {
                  return value!.ValidatPassword;
                  // if (value!.isNullOrEmpty) {
                  //   return 'Please enter your password';
                  // }
                  // if (!value.isPassword) {
                  //   return 'Password must be at least 6 characters long';
                  // }
                  // return '';
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
                height: 18,
              ),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 65),
                  child: Button(
                      text: 'Log in',
                      onTap: () {
                        if (formstate.currentState!.validate()) {
                          formstate.currentState!.save();
                          logindata.setBool('login', false);
                          AppRouter.goToAndRemove(
                              screenName: ScreenName.Advanced_Drawer);
                          // logindata.setString('Email', emailController.text);


                          // if (Email != '' && Password != '') {
                            //   logindata.setBool('login', false);
                            //   logindata.setString('Email', Email);



                          // }
                        }
                      }
                  )),
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
                height: 62,
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
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        AppRouter.goTo(screenName: ScreenName.SignUp);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              )
            ],
          )),
        )),
      ),
    );
  }
}
