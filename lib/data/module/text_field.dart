// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constans.dart';

// ignore: must_be_immutable
class TxtField extends StatelessWidget {
  TxtField(
      {Key? key,
      this.height,
      this.textDirection,
      this.width,
      this.cursorColor,
      this.fillColor,
      this.formKey,
      this.hintText,
      this.keyboardType,
      this.labelText,
      this.maxLines,
      this.obsecureText,
      this.onChanged,
      this.onFieldSubmitted,
      this.onSaved,
      this.perfixIcon,
      this.suffixIcon,
      this.textInputAction,
      this.textStyle,
      this.suffix,
      this.validator})
      : super(key: key);

  TextDirection? textDirection;
  double? height;
  double? width;
  var formKey;
  final onFieldSubmitted;
  Color? cursorColor;
  int? maxLines;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  var onSaved;
  var onChanged;
  var validator;
  TextStyle? textStyle;
  bool? obsecureText;
  String? hintText;
  String? labelText;
  Color? fillColor;
  Icon? perfixIcon;
  Widget? suffixIcon;
  TextStyle? hintStyle;
  TextStyle? labelStyle;
  Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: textDirection ?? TextDirection.ltr,
        child: SizedBox(
          height: height ?? 56.0,
          width: width ?? Get.width,
          child: Form(
            key: formKey,
            child: TextFormField(
              onFieldSubmitted: onFieldSubmitted,
              cursorColor: cursorColor ?? ColorSelecet.primery,
              maxLines: maxLines ?? 1,
              autofocus: false,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              onSaved: onSaved,
              onChanged: onChanged,
              validator: validator,
              style: textStyle ?? Get.textTheme.caption,
              obscureText: obsecureText ?? false,
              decoration: InputDecoration(
                hintText: hintText,
                labelText: labelText,
                hintStyle: hintStyle ?? Get.textTheme.subtitle2,
                labelStyle: labelStyle ?? Get.textTheme.subtitle2,
                filled: true,
                fillColor: fillColor ?? ColorSelecet.white,
                prefixIcon: perfixIcon,
                suffixIcon: suffixIcon,
                suffix: suffix,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: ColorSelecet.borderSide)),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: ColorSelecet.primery, width: 1.5),
                ),
              ),
            ),
          ),
        ));
  }
}
