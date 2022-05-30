import 'package:flutter/material.dart';

class CupCoff extends StatelessWidget {
  ///```
  ///Cupcoff
  ///```
  ///is a package for quick and easy management to build various applications
  const CupCoff({
    Key? key,
    this.enableScroll = false,
    this.scrollDirection = Axis.vertical,
    this.padding,
    this.margin,
    this.height,
    this.width,
    required this.child,
    this.controller,
    this.backgrounColor,
  }) : super(key: key);

  ///This ```Boolean``` variable is automatically turned off
  ///```
  ///bool enableScroll = False;
  ///```
  ///
  ///if you turn it on

  ///You can scroll your page
  ///
  ///```
  ///enableScroll: True
  ///```
  final bool? enableScroll;

  /// The two cardinal directions in two dimensions.
  ///
  /// The axis is always relative to the current coordinate space. This means, for
  /// example, that a [horizontal] axis might actually be diagonally from top
  /// right to bottom left, due to some local [Transform] applied to the scene.
  ///
  /// See also:
  ///
  ///  * [AxisDirection], which is a directional version of this enum (with values
  ///    light left and right, rather than just horizontal).
  ///  * [TextDirection], which disambiguates between left-to-right horizontal
  ///    content and right-to-left horizontal content.
  final Axis? scrollDirection;

  ///you can use to space between your data and box
  ///
  ///Example:
  ///
  ///```
  ///padding: EdgeInsets.all(10)
  ///```
  ///you can use another properties for example
  ///
  ///
  ///* symmetric
  ///* only
  ///* fromLTRB
  ///
  ///and more...
  ///
  ///
  final EdgeInsets? padding;

  ///you can use to space out of your data or box
  ///
  ///Example:
  ///
  ///```
  ///margin: EdgeInsets.all(10)
  ///```
  ///you can use another properties for example
  ///
  ///
  ///* symmetric
  ///* only
  ///* fromLTRB
  ///
  ///and more...
  ///
  ///
  final EdgeInsets? margin;

  ///Manage page size by yourself
  ///
  ///```
  ///heigth: 0.0
  ///width: 0.0
  ///```
  final double? height, width;

  ///You can Control the box scroll
  final ScrollController? controller;

  ///An important part of the package is that it must be used
  ///
  ///to create another widget inside this package
  final Widget child;

  ///change the app Background Color Using this property
  ///
  ///```
  ///backgrounColor: Colors.red;
  ///```
  ///
  ///by default it is ```null```
  final Color? backgrounColor;

  Widget _cupCoffContainer(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: padding,
      height: scrollDirection == Axis.vertical ? height : size.height,
      width: scrollDirection == Axis.horizontal ? width : size.width,
      decoration: BoxDecoration(
        color: backgrounColor,
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
