import 'package:flutter/material.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/device/device_utilty.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class STabbar extends StatelessWidget implements PreferredSizeWidget {
  const STabbar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? SColors.black : SColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        unselectedLabelColor: SColors.grey,
        labelColor: dark ? SColors.white : SColors.primary,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppBarHeight());
}
