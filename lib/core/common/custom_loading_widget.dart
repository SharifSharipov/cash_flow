import 'package:flutter/material.dart';
import 'package:cash_flow/core/themes/colors/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 2,
        backgroundColor: AppColors.black.withValues(alpha: 0.1),
      ),
    );
  }
}
