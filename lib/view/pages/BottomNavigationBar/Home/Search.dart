import 'package:clothing_app/core/constant/ColorManager.dart';
import 'package:clothing_app/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constant/ImagesManager.dart';
import '../../../../data/model/HomeModel.dart';
import '../../../../routes/screen_name.dart';
import '../../../Shared/TextField.dart';
import '../../../shared/BottomSheet.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.BackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '15/2 New Texas',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset(ImagesManager.Drawer)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(ImagesManager.Notification))
        ],
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text_Field(
                hint: 'Shirt',
                PrefixIcon: Icon(Icons.search),
                SuffixIcon: IconButton(
                    iconSize: 5,
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        context: context,
                        builder: (context) {
                          return Bottom_Sheet();
                        },
                      );
                    },
                    icon: Container(
                        height: 43,
                        width: 47,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: ColorManager.MainColor,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            ImagesManager.Filter,
                          ),
                        ))),
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  'Recent searches',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              Divider(),
              Text("Search results showing for “Shirt”",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
              Expanded(
                // height: 490,
                child: Container(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: newarrivalmodel.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 20),
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          AppRouter.goTo(
                              screenName: ScreenName.CasualHenleyShirts);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white),
                          // height: 190,
                          // width: 155,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                newarrivalmodel[i].image!,
                                height: 132,
                                width: 100,
                              ),
                              Text(newarrivalmodel[i].title!),
                              Text(
                                newarrivalmodel[i].price!,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          )),
    );
  }
}
