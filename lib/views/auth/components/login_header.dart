import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';

class LoginPageHeader extends StatelessWidget {
  const LoginPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.25,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset(AppImages.roundedLogo),
          ),
        ),
        Text(
          'Chào mừng bạn đến với',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          'Kara Shop',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
        )
      ],
    );
  }
}
