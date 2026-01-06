import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  final bool selectedAddress;
  const SingleAddress({super.key, required this.selectedAddress});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      width: double.infinity,
      shadowBorder: true,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? SColors.darkerGrey
          : SColors.grey,
      backgroundColor: selectedAddress
          ? SColors.primary.withOpacity(0.5)
          : Colors.transparent,
      margin: EdgeInsets.only(bottom: Ssizes.spacebtwItem),
      child: Stack(
        children: [
          Positioned(
            right: 20,
            top: 3,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                        ? SColors.light
                        : SColors.dark
                  : null,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Salman Khan',
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: Ssizes.sa / 2),
                Text(
                  '+(923117270309)',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: Ssizes.sa / 2),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'MR Code Test House No 12, Street No 4 Matta Bazar Rd  Matta, Swat 19040 ',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
