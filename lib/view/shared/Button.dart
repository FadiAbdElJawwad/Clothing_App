import 'package:flutter/material.dart';
import '../../core/constant/ColorManager.dart';


class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.onTap,
    this.width = double.maxFinite,
    Key? key,
  }) : super(key: key);
  final String text;
  final double width;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor:  ColorManager.MainColor,
        shape: const StadiumBorder(),
        fixedSize: Size(width, 59),
      ),
      child:
          Text(text, style: const TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
