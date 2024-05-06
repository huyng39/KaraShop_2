import 'package:flutter/material.dart';
import 'package:grocery/views/auth/under_construction_page.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Huớng dẫn sử dụng'),
      ),
      body: UnderConstructionPage(),
    );
  }
}
