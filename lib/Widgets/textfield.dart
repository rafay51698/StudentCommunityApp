import 'package:chattinapp/Const/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.inputType,
    this.maxLines,
    this.obscure, this.inputAction, this.suffixIcon, this.prefixIcon,
  }) : super(key: key);
  final String? hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final int? maxLines;
  final bool? obscure;
  final Icon? suffixIcon;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: obscure ?? false,
      keyboardType: inputType ?? TextInputType.text,
      cursorColor: primary,
      maxLines: maxLines ?? 1,
      textInputAction: inputAction ??  TextInputAction.next,
      decoration: InputDecoration(
        prefix: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.all(15.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.r),
        ),
        hintText: hint,
        focusColor: primary,
        fillColor: white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.circular(13.r),
        ),
      ),
    );
  }
}