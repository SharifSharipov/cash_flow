// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';

class CustomDecorationWidget extends StatelessWidget {
  CustomDecorationWidget({
    super.key,
    required this.child,
    this.horizontalPad = 0,
    this.verticalPad = 0,
    this.color,
    this.borderRadius = AppUtils.kBorderRadius12,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.spacing = 0,
  });
  List<Widget> child;
  final double horizontalPad;
  final double verticalPad;
  final Color? color;
  final BorderRadius borderRadius;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final double spacing;
  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    child: DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color == null
            ? context.isDarkMode
                  ? const Color.fromARGB(255, 57, 66, 64)
                  : const Color.fromARGB(255, 249, 247, 247)
            : color!,
      ),
      child:
          Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            spacing: he(spacing),
            children: child,
          ).paddingSymmetric(
            horizontal: horizontalPad == 0 ? wi(0) : horizontalPad,
            vertical: verticalPad == 0 ? he(0) : verticalPad,
          ),
    ),
  );
}
