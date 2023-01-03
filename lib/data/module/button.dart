import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constans.dart';

class Btn extends StatefulWidget {
  Btn(
      {Key? key,
      this.alignmentGeometry,
      this.color,
      required this.hasBorder,
      this.height,
      this.icon,
      required this.title,
      this.width,
      this.child,
      this.onTap})
      : super(key: key);

  bool? hasBorder;
  double? height;
  double? width;
  Color? color;
  AlignmentGeometry? alignmentGeometry;
  String? title;
  Icon? icon;
  var onTap;
  bool onHover = false;
  Widget? child;

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: ((value) => setState(() {
            widget.onHover = value;
          })),
      child: Container(
        height: widget.height ?? 45,
        width: widget.width ?? Get.width / 5,
        decoration: BoxDecoration(
            color: widget.color ??
                (widget.hasBorder == true
                    ? widget.onHover == false
                        ? Colors.white
                        : ColorSelecet.primery
                    : widget.onHover == false
                        ? ColorSelecet.primery
                        : ColorSelecet.hover),
            borderRadius: BorderRadius.circular(5),
            border: widget.hasBorder!
                ? Border.all(color: ColorSelecet.primery)
                : Border.fromBorderSide(BorderSide.none)),
        child: Container(
          alignment: widget.alignmentGeometry ?? Alignment.center,
          child: widget.child ??
              Text(
                widget.title!,
                style: widget.hasBorder!
                    ? Get.textTheme.button
                    : Get.textTheme.button,
              ),
        ),
      ),
    );
  }
}
