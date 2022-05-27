import 'package:flutter/material.dart';

class CupCoff extends StatelessWidget {
  const CupCoff(
      {Key? key,
      this.enableScroll = false,
      this.scrollDirection = Axis.vertical,
      this.padding,
      this.margin,
      this.height,
      this.width,
      required this.child,
      this.controller,
      this.backgrounColor,
      this.backgroundImage,
      this.backgroundImageFit})
      : super(key: key);

  ///
  final bool? enableScroll;

  ///
  final Axis? scrollDirection;

  ///
  final EdgeInsets? padding;

  ///
  final EdgeInsets? margin;

  ///
  final double? height, width;

  ///
  final ScrollController? controller;

  ///
  final Widget child;

  ///
  final Color? backgrounColor;

  ///
  final ImageProvider? backgroundImage;

  ///
  final BoxFit? backgroundImageFit;

  Widget _cupCoffContainer(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: padding,
      height: height ?? size.height,
      width: width ?? size.width,
      decoration: BoxDecoration(
        color: backgrounColor,
        image: backgroundImage == null
            ? null
            : DecorationImage(
                image: backgroundImage!,
                fit: backgroundImageFit,
              ),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return enableScroll == true
        ? Container(
            margin: margin,
            child: SingleChildScrollView(
                controller: controller,
                scrollDirection: scrollDirection!,
                child: _cupCoffContainer(context)),
          )
        : Container(margin: margin, child: _cupCoffContainer(context));
  }
}
