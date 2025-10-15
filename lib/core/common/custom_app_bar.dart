import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = "",
    this.centerTitle = true,
    this.actions,
    this.leadingVisible = true,
    this.bottom,
    this.leading
  });

  final String title;
  final bool centerTitle;
  final Widget? actions;
  final bool leadingVisible;
  final PreferredSizeWidget? bottom;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingVisible
          ? IconButton(
              onPressed: () => context.pop(),
              icon:Icon(Icons.arrow_back,color: context.isDarkMode?Colors.white:Colors.black,) ,
            )
          : leading,
      centerTitle: centerTitle,
      title: Text(title, style: context.textStyle.appBarTitle),
      actions: actions != null ? [actions!.paddingOnly(right: wi(10))] : [],
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(65 + (bottom?.preferredSize.height ?? 0));
}
