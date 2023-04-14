import '../../core/constant/ImagesManager.dart';

class Onbording2Model {
  Onbording2Model({this.image, });
  final String? image;
 
}

class MyWalletsModel {
  MyWalletsModel({this.image, this.title, this.price, this.date});
  final String? image;
  final String? title;
  final String? price;
  final String? date;
}

List<Onbording2Model> onbording2List = [
  Onbording2Model(
      image: ImagesManager.MyWallets,
   ),
  Onbording2Model(
      image: ImagesManager.MyWallets,
    ),
  Onbording2Model(
      image: ImagesManager.MyWallets,
  )
];


List<MyWalletsModel> mywalletsmodel = [

  MyWalletsModel(
      image: ImagesManager.CasualShirts,
      title: "Casual Shirts",
      price: "\$250",
      date: "23 Mar’2021"),
        MyWalletsModel(
      image: ImagesManager.CasualShirts,
      title: "Casual Shirts",
      price: "\$250",
      date: "23 Mar’2021"),
        MyWalletsModel(
      image: ImagesManager.CasualShirts,
      title: "Casual Shirts",
      price: "\$250",
      date: "23 Mar’2021"),
        MyWalletsModel(
      image: ImagesManager.CasualShirts,
      title: "Casual Shirts",
      price: "\$250",
      date: "23 Mar’2021"),
        MyWalletsModel(
      image: ImagesManager.CasualShirts,
      title: "Casual Shirts",
      price: "\$250",
      date: "23 Mar’2021"),
 
];
