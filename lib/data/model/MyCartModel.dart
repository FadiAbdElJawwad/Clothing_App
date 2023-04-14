import '../../core/constant/ImagesManager.dart';

class MyCartModel {
  MyCartModel({this.image, this.title, this.price});
  final String? image;
  final String? title;
  final String? price;
}

List<MyCartModel> mycartmodel = [
  MyCartModel(
      image: ImagesManager.HenleyShirts,
      title: "Henley Shirts",
      price: "\$250"),
  MyCartModel(
      image: ImagesManager.CasualShirts,
      title: "Casual Shirts",
      price: "\$145"),
  MyCartModel(
      image: ImagesManager.CasualNolin_1,
      title: "Casual Nolin",
      price: "\$225"),
  MyCartModel(
      image: ImagesManager.CasualNolin_2,
      title: "Casual Nolin",
      price: "\$225"),
];

List<MyCartModel> tempArray = [];
