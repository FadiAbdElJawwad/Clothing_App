import '../../core/constant/ImagesManager.dart';

class HomeModel {
  HomeModel({
    this.image,
    this.title,
  });
  final String? image;
  final String? title;
}

class NewArrivalModel {
  NewArrivalModel({this.image, this.title, this.price});
  final String? image;
  final String? title;
  final String? price;
}

List<HomeModel> homemodel = [
  HomeModel(
    image: ImagesManager.Dress,
    title: "Dress",
  ),
  HomeModel(
    image: ImagesManager.Shirt,
    title: "Shirt",
  ),
  HomeModel(
    image: ImagesManager.Pants,
    title: "Pants",
  ),
  HomeModel(
    image: ImagesManager.Tshirt,
    title: "Tshirt",
  ),
];

List<NewArrivalModel> newarrivalmodel = [
  NewArrivalModel(
      image: ImagesManager.LongSleeveShirts,
      title: "Long Sleeve Shirts",
      price: r'$165'),
  NewArrivalModel(
      image: ImagesManager.CasualHenleyShirts,
      title: "Casual Henley Shirts",
      price: r'$275'),
  NewArrivalModel(
      image: ImagesManager.CurvedHemShirts, title: "Pants", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
  NewArrivalModel(
      image: ImagesManager.HenleyShirts, title: "Casual Nolin", price: r'$100'),
];
