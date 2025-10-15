import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/themes/colors/app_colors.dart';
import 'package:cash_flow/core/utils/utils.dart';


class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.textEditingController,
    this.onChange,
    this.maxLines,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.obscure,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.readOnly = false,
    this.onTap,
    this.formatter,
    this.maxLength,
    this.focusNode,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.textCapitalization = TextCapitalization.none,
    this.prefixText = "",
    this.label = "",
  });

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;
  final String hintText;
  final String? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final String? initialValue;
  final FormFieldValidator<String>? validator;
  final int? maxLines;
  final TextInputType textInputType;
  final int? minLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final Function()? onTap;
  final List<TextInputFormatter>? formatter;
  final AutovalidateMode autoValidateMode;
  final TextCapitalization textCapitalization;
  final String prefixText;
  final String label;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;
  late bool _isControllerOwned;

  void _onTextChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _isControllerOwned = widget.textEditingController == null;
    _controller = widget.textEditingController ?? TextEditingController();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    if (_isControllerOwned) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isEmpty = _controller.text.isEmpty;
    final Color bgColor =
        widget.fillColor ??
        (context.isDarkMode
            ? const Color.fromARGB(255, 50, 47, 47)
            : AppColors.fieldColor);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: he(8),
      children: [
        widget.label.isEmpty
            ? const SizedBox.shrink()
            : Text(widget.label, style: context.textStyle.bodyBody),
        TextFormField(
          controller: _controller,
          maxLines: widget.maxLines ?? 1,
          minLines: widget.minLines ?? 1,
          validator: widget.validator,
          readOnly: widget.readOnly,
          focusNode: widget.focusNode,
          inputFormatters: widget.formatter,
          onTap: widget.onTap,
          initialValue: widget.initialValue,
          style: context.textStyle.regularCallout,
          obscureText: widget.obscure ?? false,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          onChanged: widget.onChange,
          cursorColor: AppColors.buttonColor,
          maxLength: widget.maxLength,
          autovalidateMode: widget.autoValidateMode,
          textCapitalization: widget.textCapitalization,
          decoration: InputDecoration(
            prefixText: widget.prefixText,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            counterText: '',
            suffixIconConstraints: const BoxConstraints(
              minHeight: 25,
              minWidth: 25,
            ),
            prefixIcon: widget.prefixIcon == null
                ? null
                : Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(
                      widget.prefixIcon ?? "",
                      colorFilter: ColorFilter.mode(
                        widget.preIconColor ?? AppColors.textColorSub,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
            suffixIcon: widget.suffixIcon?.paddingOnly(right: 16),
            hintStyle: context.textStyle.regularCallout.copyWith(
              color: context.isDarkMode ? AppColors.white : AppColors.textColor,
            ),
            hintText: widget.hintText,
            errorStyle: context.textStyle.regularCallout.copyWith(
              color: AppColors.c_F71E52.withValues(alpha: 0.5),
            ),
            filled: true,
            fillColor: bgColor,

            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: isEmpty
                    ? bgColor
                    : (context.isDarkMode
                          ? AppColors.white.withValues(alpha: 0.4)
                          : AppColors.textColorSub),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 157, 159, 163),
                width: 0.9,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: AppColors.c_F71E52.withValues(alpha: 0.6),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: AppColors.c_F71E52.withValues(alpha: 0.6),
                width: 1.5,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: bgColor),
            ),
          ),
        ),
      ],
    );
  }
}
