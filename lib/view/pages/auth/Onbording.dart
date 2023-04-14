import 'package:clothing_app/routes/app_router.dart';
import 'package:clothing_app/routes/screen_name.dart';
import 'package:flutter/material.dart';
import '../../../data/model/OnboringModel.dart';
import '../../Shared/Button.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }


  List Indicator = ["Next >", " Next >>", "Get Started >>> "];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    (_currentPage + 1).toString() +
                        "/" +
                        onbordingList.length.toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        AppRouter.goToAndRemove(screenName: ScreenName.Login);
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ))
                ],
              )),
          const SizedBox(height: 55),
          SizedBox(
            width: double.infinity,
            height: 325,
            child: PageView.builder(
                onPageChanged: (int currentPage) {
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
                controller: _pageController,
                itemCount: onbordingList.length,
                itemBuilder: (context, i) {
                  return Image.asset(
                    // image[i]['image1'],
                    onbordingList[i].image!,
                    width: 324,
                  );
                }),
          ),
          SizedBox(height: 40),
          Text(
            // title[_currentPage],
            onbordingList[_currentPage].title!,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            onbordingList[_currentPage].body!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 79),
            child: Button(
                text: Indicator[_currentPage],
                onTap: () {
                  if(_currentPage > onbordingList.length - 2){
                    AppRouter.goToAndRemove(screenName: ScreenName.Login);
                  }else{
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  }

                },
            ),
          ),

        ],
      ),
    ));
  }
}
