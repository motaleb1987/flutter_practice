
import 'dart:convert';

import 'package:flutter_practice/module_13/CRUD/model/productModel.dart';
import 'package:flutter_practice/module_13/CRUD/utils/urls.dart';
import 'package:http/http.dart' as http;
class ProductController{
  List<Data> products =[];
  bool isLoading = true;

  Future fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));
    if(response.statusCode == 200){
       isLoading = false;
      final data = jsonDecode(response.body);
      // data send to ProductModel->fromJson method
      ProductModel model = ProductModel.fromJson(data);
      products = model.data ?? [];
    }
  }

  Future<bool> deleteProduct(String ProductId) async {
    final response = await http.get(Uri.parse(Urls.deleteProduct(ProductId)));
    print(Uri.parse(Urls.deleteProduct(ProductId)));
    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }
  }


}