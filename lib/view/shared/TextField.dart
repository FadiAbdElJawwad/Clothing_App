import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Text_Field extends StatelessWidget {
  Text_Field({
    required this.hint,
    required this.obscureText,
    this.width = double.infinity,
    this.PrefixIcon,
    this.SuffixIcon,
    this.keyboardType,
    this.Validator,
    this.Controller,
    Key? key,
    Function(dynamic value)? onSaved,
  }) : super(key: key);
  final String hint;
  final double width;
  final bool obscureText;
  final  keyboardType;
  final PrefixIcon;
  final SuffixIcon;
  final String? Function(String?)? Validator;
  final Controller;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: double.infinity,
      child: TextFormField(
        controller: Controller,
        validator: Validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            prefixIcon: PrefixIcon,
            suffixIcon: SuffixIcon,
            contentPadding: const EdgeInsets.only(left: 30),
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 12,
              color: Color(0xff230A06),
            ),
            fillColor: Colors.white),
      ),
    );
  }
}
