import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_store/common/images/s.circuler.image.dart';
import 'package:s_store/utils/constants/colors.dart';
import 'package:s_store/utils/constants/image_string.dart';

class SuserProfile extends StatelessWidget {
  final VoidCallback? onPressed;
  const SuserProfile({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SCirculerImage(
        image: SImage.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Code with Salman',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: SColors.white),
      ),
      subtitle: Text(
        'se7270309@gmail.com',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: SColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit, color: SColors.white),
      ),
    );
  }
}
