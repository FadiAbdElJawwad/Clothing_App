import '../../core/constant/ImagesManager.dart';

class OnbordingModel {
  OnbordingModel({this.image ,this.title , this.body});
  final String? image;
  final String? title;
  final String? body;
}

List<OnbordingModel>onbordingList = [
  OnbordingModel(
      image: ImagesManager.Onbording_1,
      title: "Choose Product",
      body:  " A product is the item offered for sale.\n A product can be a service or an item. It can be \n physical or in virtual or cyber form"),
  OnbordingModel(
      image: ImagesManager.Onbording_2,
      title: "Make Payment",
      body:" Payment is the transfer of money \n services in exchange product or Payments \n  typically made terms agreed "),
  OnbordingModel(
      image: ImagesManager.Onbording_3,
      title: "Get Your Order",
      body: "Business or commerce an order is a stated \n intention either spoken to engage in a \n commercial transaction specific products "),
];