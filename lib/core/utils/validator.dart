part of 'utils.dart';

sealed class Validators {
  // final BuildContext context;
  // Validators({required this.context});

  // static String? validateFirstName(String? value, BuildContext context) {
  //   if (value == null || value.trim().isEmpty) {
  //     return context.local.str_error_first_name_required;
  //   }
  //   if (value.trim().length < 2) {
  //     return context.local.str_error_first_name_short;
  //   }
  //   if (!RegExp(r'^[a-zA-Zа-яА-ЯёЁўқғҳЇїІіЁё]+$').hasMatch(value.trim())) {
  //     return context.local.str_error_first_name_invalid;
  //   }
  //   if (!RegExp(r'^[A-ZА-ЯЁЎҚҒҲЇІ]').hasMatch(value.trim()[0])) {
  //     return context.local.str_error_first_name_capital;
  //   }
  //   return null;
  // }

  // static String? validateLastName(String? value, BuildContext context) {
  //   if (value == null || value.trim().isEmpty) {
  //     return context.local.str_error_last_name_required;
  //   }
  //   if (value.trim().length < 2) {
  //     return context.local.str_error_last_name_short;
  //   }
  //   if (!RegExp(r'^[a-zA-Zа-яА-ЯёЁўқғҳЇїІіЁё]+$').hasMatch(value.trim())) {
  //     return context.local.str_error_last_name_invalid;
  //   }
  //   if (!RegExp(r'^[A-ZА-ЯЁЎҚҒҲЇІ]').hasMatch(value.trim()[0])) {
  //     return context.local.str_error_last_name_capital;
  //   }
  //   return null;
  // }

  // static String? validatePhone(String? value, BuildContext context) {
  //   if (value == null || value.isEmpty) {
  //     return context.local.str_enter_phone_error;
  //   }
  //   return null;
  // }
  // static String? validateLoginPassword(String? value, BuildContext context) {
  //   if (value == null || value.isEmpty) {
  //     return context.local.str_login_empty;
  //   }
  //   if (value.length < 6) {
  //     return context.local.str_login_short;
  //   }
  //   return null;
  // }

  // static String? validateRegisterPassword(String? value, BuildContext context) {
  //   if (value == null || value.isEmpty) {
  //     return context.local.str_register_empty;
  //   }
  //   if (value.length < 6) {
  //     return context.local.str_register_short;
  //   }
  //   return null;
  // }

  // static String? validateConfirmPassword(
  //   String? value,
  //   String password,
  //   BuildContext context,
  // ) {
  //   if (value == null || value.isEmpty) {
  //     return context.local.str_register_emptyConfirm;
  //   }
  //   if (value != password) {
  //     return context.local.str_register_notMatch;
  //   }
  //   return null;
  // }
  // static String? validateGender(String? value, BuildContext context) {
  //   if (value == null || value.isEmpty||value==context.local.str_select_gender) {
  //     return context.local.str_gender_required;
  //   }
  //   return null;
  // }
}
