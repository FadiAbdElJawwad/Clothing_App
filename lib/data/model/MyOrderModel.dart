import '../../core/constant/ImagesManager.dart';

class MyOrderModel {
  MyOrderModel({this.image, this.title, this.price,this.date});
  final String? image;
  final String? title;
  final String? price;
  final String? date;
}

List<MyOrderModel> myordermodel = [
  MyOrderModel(
      image: ImagesManager.HenleyShirts,
      title: "Henley Shirts",
      price: "\$250",
  date: "Today"),
  MyOrderModel(
      image: ImagesManager.CasualShirts,
      title: "Casual Shirts",
      price: "\$145",
      date: "20 Jan’2021"),
  MyOrderModel(
      image: ImagesManager.CasualNolin_1,
      title: "Casual Nolin",
      price: "\$225",
      date: "20 Mar’2021"),
  MyOrderModel(
      image: ImagesManager.CasualNolin_2,
      title: "Casual Nolin",
      price: "\$225",
      date: "20 Mar’2021"),
];
