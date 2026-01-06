import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/fetaures/personalization/screens/address/address.new.dart';
import 'package:s_store/fetaures/personalization/screens/address/widget/single_adress.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        backgroundColor: SColors.primary,
        child: Icon(Iconsax.add, color: SColors.white),
      ),
      appBar: SAppBar(
        showBackArrow: true,
        title: Text(
          'Address',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Ssizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SizedBox(height: Ssizes.spacebtwItem),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
