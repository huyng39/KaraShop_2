import 'package:flutter/material.dart';
import 'package:grocery/core/routes/app_routes.dart';

import '../../core/components/network_image.dart';
import '../../core/constants/app_defaults.dart';

class EmptyCartPage extends StatelessWidget {
  const EmptyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const Padding(
              padding: EdgeInsets.all(AppDefaults.padding * 2),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child:
                    NetworkImageWithLoader('https://i.imgur.com/3avdket.png'),
              ),
            ),
          ),
          Text(
            'Giỏ hàng đang rỗng',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text('Giỏ hàng của bạn hiện tại đang rỗng!'),
          // const Spacer(),
          // SizedBox(
          //   width: double.infinity,
          //   child: Padding(
          //     padding: const EdgeInsets.all(AppDefaults.padding * 2),
          //     child: ElevatedButton(
          //       onPressed: () {
          //         Navigator.pushNamed(context, AppRoutes.category);
          //       },
          //       child: const Text('Quay lại trang chủ'),
          //     ),
          //   ),
          // ),
          // const Spacer(),
        ],
      ),
    );
  }
}
