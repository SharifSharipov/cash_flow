import 'package:flutter/material.dart';
import 'package:scale_button/scale_button.dart';
import 'package:cash_flow/core/themes/colors/app_colors.dart';

class CustomInkWidget extends StatelessWidget {
  const CustomInkWidget({
    super.key,
    required this.borderRadius,
    required this.child,
    required this.onTap,
  });
  final BorderRadius borderRadius;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ScaleButton(
      onTap: onTap,
      bound: 0.001,
      child: Material(
        borderRadius: borderRadius,
        color: Colors.transparent,
        child: Center(
          child: Ink(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: AppColors.buttonColor.withValues(alpha: .1),
              onTap: onTap,
              borderRadius: borderRadius,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
