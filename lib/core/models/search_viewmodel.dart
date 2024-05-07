import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/core/models/product/product.dart';

class SearchVM with ChangeNotifier {
  List<String> lst = [];

  // Hàm thêm từ khóa tìm kiếm vào danh sách
  void addSearchResult(String name) {
    // Kiểm tra từ khóa đã tồn tại trong danh sách hay chưa?
    bool isExisting = lst.any((element) => lst.contains(name),);

    // Nếu chưa tồn tại, thêm vào
    if (!isExisting) {
      lst.add(name);
      // notifyListeners();
    } else {
    }
    notifyListeners();
  }
}
