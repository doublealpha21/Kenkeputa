import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title = '',
    this.showLeading = true,
    this.showElevation = false,
  });

  final String title;
  final bool showLeading;
  final bool showElevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: showElevation ? 1.0 : 0.0,
      leadingWidth: 80,
      backgroundColor: showElevation ? Colors.transparent : Colors.transparent,
      centerTitle: true,
      title: Text(
        title,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
