import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cash_flow/core/themes/colors/app_colors.dart';



sealed class Helper {
  Helper._();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static void showToast(
      {required String message, required bool themeController}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor:
          themeController ? Colors.black : AppColors.textColor.withValues(alpha: 0.8),
      textColor: themeController ? Colors.white : Colors.black,
      fontSize: 16.0,
    );
  }
  static double customButtonPadding =
      MediaQuery.of(navigatorKey.currentState!.context).padding.bottom;
}
