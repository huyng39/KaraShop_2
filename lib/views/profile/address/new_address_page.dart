import 'package:flutter/material.dart';
import '../../../core/components/app_radio.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_defaults.dart';

import '../../../core/components/app_back_button.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class NewAddressPage extends StatelessWidget {
  // static const _position = LatLng(10.77615745855286, 106.66759669033004);
  const NewAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardColor,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Thêm địa chỉ',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(AppDefaults.padding),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding * 2,
          ),
          decoration: BoxDecoration(
            color: AppColors.scaffoldBackground,
            borderRadius: AppDefaults.borderRadius,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* <----  Full Name -----> */
              const Text("Tên riêng"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: AppDefaults.padding),

              /* <---- Phone Number -----> */
              const Text("Số điện thoại"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: AppDefaults.padding),

              /* <---- Address Line 1 -----> */
              const Text("Địa chỉ giao hàng"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: AppDefaults.padding),

              /* <---- Address Line 2 -----> */
              // const Text("Địa chỉ giao hàng khác"),
              // const SizedBox(height: 8),
              // TextFormField(
              //   keyboardType: TextInputType.text,
              //   textInputAction: TextInputAction.next,
              // ),
              // const SizedBox(height: AppDefaults.padding),

              /* <---- City -----> */
              // const Text("City"),
              // const SizedBox(height: 8),
              // TextFormField(
              //   keyboardType: TextInputType.text,
              //   textInputAction: TextInputAction.next,
              // ),
              // const SizedBox(height: AppDefaults.padding),

              /* <---- State and Zip Code -----> */
              // Row(
              //   children: [
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text("State"),
              //           const SizedBox(height: 8),
              //           TextFormField(
              //             keyboardType: TextInputType.text,
              //             textInputAction: TextInputAction.next,
              //           ),
              //         ],
              //       ),
              //     ),
              //     const SizedBox(width: AppDefaults.padding),
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text("Zip Code"),
              //           const SizedBox(height: 8),
              //           TextFormField(
              //             keyboardType: TextInputType.number,
              //             textInputAction: TextInputAction.done,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // const Padding(
              //   padding:
              //       EdgeInsets.symmetric(vertical: AppDefaults.padding),
              //   child: Row(
              //     children: [
              //       AppRadio(isActive: true),
              //       SizedBox(width: AppDefaults.padding),
              //       Text('Make Default Shipping Address'),
              //     ],
              //   ),
              // ),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const AspectRatio(
                  aspectRatio: 3 / 2,
                  // child: NetworkImageWithLoader(
                  //   'https://i.imgur.com/p4HXXVA.png',
                  //   fit: BoxFit.contain,
                  // ),
                  // child: GoogleMap(
                  //   initialCameraPosition:
                  //       CameraPosition(target: _position, zoom: 17.0),
                  // ),
                ),
              ),
              const SizedBox(height: AppDefaults.padding),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(
                    'Lưu',
                    style: TextStyle(fontSize: 19),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
