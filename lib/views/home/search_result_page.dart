import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kết quả tìm kiếm', style: TextStyle(fontSize: 15),),
        leading: const AppBackButton(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Tìm kiếm sản phẩm',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  child: SvgPicture.asset(AppIcons.search),
                ),
                suffixIconConstraints: const BoxConstraints(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
              child: Text(
                '1 sản phẩm tìm thấy',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(top: AppDefaults.padding),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 18,
                childAspectRatio: 0.65,
              ),
              itemCount: 1,
              itemBuilder: (context, index) {
                // return ProductTileSquare(
                //   data: Dummy.products.first,
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
