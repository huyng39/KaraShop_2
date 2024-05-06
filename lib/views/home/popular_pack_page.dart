import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery/core/components/product_tile_square.dart';
import 'package:grocery/core/data/api.dart';
import 'package:grocery/core/models/product/product.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/bundle_tile_square.dart';
import '../../core/constants/constants.dart';
import '../../core/routes/app_routes.dart';

class PopularPackPage extends StatefulWidget {
  final int? brandId;
  const PopularPackPage({super.key, this.brandId});

  @override
  State<PopularPackPage> createState() => _PopularPackPageState();
}

class _PopularPackPageState extends State<PopularPackPage> {
  Future<List<Product>> getDataPro() async {
    if (widget.brandId != null) {
      // Lấy thông tin product từ API
      return await APIRepository().getProduct(widget.brandId);
    }

    // Lấy thông tin product từ API
    return await APIRepository().getProduct(widget.brandId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sản phẩm nổi bật'),
        leading: const AppBackButton(),
      ),
      body: FutureBuilder<List<Product>>(
        future: getDataPro(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: LoadingAnimationWidget.threeArchedCircle(
                    color: Colors.green, size: 45));
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red, fontSize: 20),
              ),
            );
          } else {
            //trả về danh sách sản phẩm theo id lẻ
            final evenItems = snapshot.data!
                .asMap()
                .entries
                .where((entry) => entry.key % 2 != 0)
                .map((entry) => entry.value)
                .toList();
            return GridView.builder(
              itemCount: snapshot.data!.length,
              padding: const EdgeInsets.only(top: AppDefaults.padding),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                final itemPro = evenItems[index];
                return productItemSquare(itemPro, context);
              },
            );
          }
        },
      ),
    );
  }
}
