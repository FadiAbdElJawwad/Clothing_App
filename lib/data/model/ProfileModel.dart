import 'package:clothing_app/core/constant/ColorManager.dart';
import '../../core/constant/ImagesManager.dart';


class ProfileModel {
  ProfileModel({this.backgroundcolor, this.image, this.title, this.number});
  final String? image;
  final String? title;
  final String? number;
  final  backgroundcolor;
}

List<ProfileModel> profilemodel = [
  ProfileModel(
      image: ImagesManager.Bag,
      backgroundcolor: ColorManager.BagBackground,
      title: "Progress order",
      number: "10+"),
  ProfileModel(
      image: ImagesManager.Ticket,
      backgroundcolor: ColorManager.TicketBackground,
      title: "Promocodes",
      number: "5"),
  ProfileModel(
      image: ImagesManager.Star,
      backgroundcolor: ColorManager.StarBackground,
      title: "Reviews",
      number: "4.5K"),

];
