import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/device/device_utilty.dart';

class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SAppBar({
    super.key,
    this.title,
    this.actions,
    this.showBackArrow = false,
    this.leadingIcon,
    this.leadingIconOnPressed,
  });
  final Widget? title;
  final List<Widget>? actions;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final VoidCallback? leadingIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Ssizes.ma),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left),
              )
            : leadingIcon != null
            ? IconButton(
                onPressed: leadingIconOnPressed,
                icon: Icon(leadingIcon),
              )
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
