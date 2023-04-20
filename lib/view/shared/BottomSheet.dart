import 'package:flutter/material.dart';
import '../../core/constant/ColorManager.dart';
import '../../routes/app_router.dart';
import 'Button.dart';

class Bottom_Sheet extends StatefulWidget {
  const Bottom_Sheet({Key? key}) : super(key: key);

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  RangeValues _currentRangeValues = const RangeValues(50, 200);
  RangeValues _currentRangeValues2 = const RangeValues(50, 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SizedBox(
          // height: 560,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Clear',
                    style: TextStyle(fontSize: 14, color: Colors.grey),),
                  Text('Filters', style: TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold),),
                  IconButton(
                      onPressed: () {
                        AppRouter.back();
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              Divider(),
              SizedBox(height: 15,),
              Text('Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              ColorManager.MainColor)),
                      onPressed: () {},
                      child: Text('New Arrival',
                        style: TextStyle(fontSize: 12, color: Colors.white),)),

                  TextButton(

                      onPressed: () {},
                      child: Text('Top Tranding',
                        style: TextStyle(fontSize: 12, color: Colors.black),)),

                  TextButton(

                      onPressed: () {},
                      child: Text('Featured Products',
                        style: TextStyle(fontSize: 12, color: Colors.black),)),
                ],
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pricing', style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),),
                  Text(r'$50-$200', style: TextStyle(fontSize: 12),)
                ],
              ),
              SizedBox(height: 50,),
              RangeSlider(
                activeColor: ColorManager.MainColor,
                inactiveColor: Colors.grey,
                values: _currentRangeValues,
                max: 300,
                divisions: 6,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Distance', style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),),
                  Text('500m-2Km', style: TextStyle(fontSize: 12),),
                ],
              ),
              SizedBox(height: 50,),
              RangeSlider(
                activeColor: ColorManager.MainColor,
                inactiveColor: Colors.grey,
                values: _currentRangeValues2,
                max: 300,
                divisions: 6,
                labels: RangeLabels(
                  _currentRangeValues2.start.round().toString(),
                  _currentRangeValues2.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues2 = values;
                  });
                },
              ),
              SizedBox(height: 40,),


              Padding(padding: EdgeInsets.symmetric(horizontal: 39),
                child: Button(
                    text: 'Apply Filter',
                    onTap: () {}),
              )
            ],
          ),
        )
    );
  }
}