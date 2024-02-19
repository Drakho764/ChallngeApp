import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    Key? key,
    this.onTap,
    this.color,
    this.borderRadius,
    required this.child,
    this.height = 30,
    this.width = 50,
    this.margin,
    this.padding,
  }) : super(key: key);

  final BorderRadiusGeometry? borderRadius;

  final EdgeInsetsGeometry? margin;

  final EdgeInsetsGeometry? padding;

  final Color? color;

  final VoidCallback? onTap;

  final double height;

  final double width;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Colors.white,
      borderRadius: borderRadius ?? BorderRadius.circular(0.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          margin: margin,
          padding: padding,
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}
