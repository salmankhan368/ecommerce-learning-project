import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_store/common/widgets/app.bar/app_bar.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/common/widgets/successScreen/sucees_screen.dart';
import 'package:s_store/fetaures/shop/screens/cart/widgets/coupon_widget.dart';
import 'package:s_store/fetaures/shop/screens/cart/widgets/x_cartitem.dart';
import 'package:s_store/fetaures/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:s_store/fetaures/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:s_store/fetaures/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:s_store/navigation_menu.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true,
        title: Text(
          'Orders & Reviews',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Ssizes.defaultSpace),
          child: Column(
            children: [
              xcartItem(showAddRemoveButton: false),
              SizedBox(height: Ssizes.spacebtwSection),
              CoupanCode(),
              SizedBox(height: Ssizes.spacebtwSection),

              SRoundedContainer(
                padding: EdgeInsets.all(Ssizes.ma),
                shadowBorder: true,
                backgroundColor: dark ? SColors.black : SColors.white,
                child: Column(
                  children: [
                    //price
                    SBillingAmountSection(),
                    SizedBox(height: Ssizes.spacebtwItem),
                    //Divider
                    Divider(),
                    SizedBox(height: Ssizes.spacebtwItem),
                    //payment method
                    SBillingPaymentSection(),
                    //adresss
                    SBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Ssizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: SImage.success,
              title: 'Payment Success!',
              subtile: 'Your item wilbe shiped soon!',
              onPressed: () => Get.offAll(() => NavigationMenu()),
            ),
          ),
          child: Text('Checkout \$232.00/-'),
        ),
      ),
    );
  }
}
