// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constans.dart';

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
  Icon? suffixIcon;
  TextStyle? hintStyle;
  TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: textDirection ?? TextDirection.rtl,
        child: SizedBox(
          height: height ?? 50.0,
          width: width ?? Get.width / 5,
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
                  fillColor: fillColor ?? ColorSelecet.surface,
                  prefixIcon: perfixIcon,
                  suffixIcon: suffixIcon,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: ColorSelecet.primery, width: 1.5),
                  ),
                  hoverColor: ColorSelecet.surface),
            ),
          ),
        ));
  }
}
