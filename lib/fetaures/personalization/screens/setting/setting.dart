import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:s_store/common/widgets/list_tile/setting_menu.dart';
import 'package:s_store/common/widgets/list_tile/user_profile.dart';
import 'package:s_store/common/widgets/text/section_heading.dart';
import 'package:s_store/fetaures/personalization/screens/address/address.dart';
import 'package:s_store/fetaures/personalization/screens/profile/profile.dart';
import 'package:s_store/fetaures/shop/screens/order/order.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  SAppBar(
                    showBackArrow: true,
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: SColors.white),
                    ),
                  ),
                  //user
                  SuserProfile(onPressed: () => Get.to(() => ProfileScreen())),
                  SizedBox(height: Ssizes.spacebtwSection),
                ],
              ),
            ),
            //body
            Padding(
              padding: EdgeInsets.all(Ssizes.defaultSpace),
              child: Column(
                children: [
                  SSectionHeading(
                    title: 'Account Setting',
                    showBackAction: false,
                  ),
                  SizedBox(height: Ssizes.spacebtwSection),
                  SettingMenutile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Get shoping delivery address',
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ),
                  SettingMenutile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add remove products and move to checkout',
                    onTap: () {},
                  ),
                  SettingMenutile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed orders',
                    onTap: () => Get.to(() => OrderScreen()),
                  ),
                  SettingMenutile(
                    icon: Iconsax.bank,
                    title: 'Bank ACcount',
                    subtitle: 'Withdraw balance and registered bank account',
                    onTap: () {},
                  ),
                  SettingMenutile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List all the discount coupens',
                    onTap: () {},
                  ),
                  SettingMenutile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subtitle: 'Set any kind of notification message',
                    onTap: () {},
                  ),
                  SettingMenutile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy ',
                    subtitle: 'Manage data usage and connection account',
                    onTap: () {},
                  ),
                  SizedBox(height: Ssizes.spacebtwSection),
                  SSectionHeading(title: 'App Settings', showBackAction: false),
                  SettingMenutile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase',
                    onTap: () {},
                  ),
                  SettingMenutile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommodation based on locaton',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SettingMenutile(
                    icon: Iconsax.location,
                    title: 'Safe Mode',
                    subtitle: 'search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SettingMenutile(
                    icon: Iconsax.image,
                    title: 'HD image quality',
                    subtitle: 'Set image Quality to be seem',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  SizedBox(height: Ssizes.spacebtwSection),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Logout'),
                    ),
                  ),
                  SizedBox(height: Ssizes.spacebtwSection * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
