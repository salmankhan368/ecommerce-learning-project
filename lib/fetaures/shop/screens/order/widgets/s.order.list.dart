import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/sizes.dart';
import 'package:s_store/utils/helpers/helper_functions.dart';

class SOrderList extends StatelessWidget {
  const SOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_, __) => SizedBox(height: Ssizes.spacebtwItem),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (_, index) => SRoundedContainer(
        padding: EdgeInsets.all(Ssizes.ma),
        backgroundColor: dark ? SColors.dark : SColors.light,
        shadowBorder: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Iconsax.ship),
                SizedBox(width: Ssizes.spacebtwItem / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: SColors.primary,
                          fontSizeDelta: 1,
                        ),
                      ),
                      Text(
                        '4 jan 2026',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: Ssizes.ma),
                ),
              ],
            ),
            SizedBox(width: Ssizes.spacebtwItem),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.tag),
                      SizedBox(width: Ssizes.spacebtwItem / 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            Text(
                              'Order No',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .apply(color: SColors.primary),
                            ),
                            Text("[#99999]"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.calendar),
                      SizedBox(width: Ssizes.spacebtwItem / 2),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shiping Date',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '06 Jan 2026',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
