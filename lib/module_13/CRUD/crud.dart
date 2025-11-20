import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_practice/module_13/CRUD/model/productModel.dart';
import 'package:flutter_practice/module_13/CRUD/productcontroller.dart';
import 'package:http/http.dart' as http;

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  ProductController productController = ProductController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    await productController.fetchProducts();
    if (mounted) setState(() {});
  }

  productDialog(Data ? item, {bool isEdit = false}) {
    TextEditingController productNameController = TextEditingController();
    TextEditingController productImageController = TextEditingController();
    TextEditingController productQtyController = TextEditingController();
    TextEditingController productUnitPriceController = TextEditingController();
    TextEditingController productTotalPriceController = TextEditingController();

    if(item != null){
      productNameController.text = item.productName ?? '';
      productImageController.text = item.img ?? '';
      productQtyController.text = item.qty?.toString() ?? '';
      productUnitPriceController.text = item.unitPrice?.toString() ?? '';
      productTotalPriceController.text = item.totalPrice?.toString() ?? '';
    }

    Color addTitleColor = Colors.green;
    Color editTitleColor = Colors.orange;


    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Text(item == null ? 'Add Product' : 'Edit Product',
          style: TextStyle(
            color: item == null ? addTitleColor: editTitleColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: productNameController,
                decoration: InputDecoration(labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                  ),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: productImageController,
                decoration: InputDecoration(labelText: 'Image',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                  ),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: productQtyController,
                decoration: InputDecoration(labelText: 'Qty',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                  ),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: productUnitPriceController,
                decoration: InputDecoration(labelText: 'Unit Price',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                  ),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: productTotalPriceController,
                decoration: InputDecoration(labelText: 'Total Price',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                  ),
                ),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Cancel',
                  style: TextStyle(
                    color: Colors.red
                  ),
                  )),

                 isEdit ? ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.orange,
                     foregroundColor: Colors.white,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                     )

                   ),
                     onPressed: () async {
                        productController.updateProduct(
                            Data(
                                sId: item!.sId,
                            productName: productNameController.text,
                            img: productImageController.text,
                            qty: int.parse(productQtyController.text),
                            unitPrice: int.parse(productUnitPriceController.text),
                            totalPrice: int.parse(productTotalPriceController.text)
                          ),
                        );
                       await fetchData();
                        Navigator.pop(context);
                     }, child: Text('Update'))
                     : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      onPressed: () async {
                        productController.createProduct(
                              Data(
                            productName: productNameController.text,
                            img: productImageController.text,
                            qty: int.parse(productQtyController.text),
                            unitPrice: int.parse(productUnitPriceController.text),
                            totalPrice: int.parse(productTotalPriceController.text),
                          )
                        );
                        await fetchData();
                        Navigator.pop(context);
                      }, child: Text('Save'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        title: Text(
          'CRUD (API)',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: productController.isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
              ),
              itemCount: productController.products.length,
              itemBuilder: (context, index) {
                final item = productController.products[index];
                return Card(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 140,
                          child: Image.network(item.img.toString()),
                        ),
                        Text(
                          item.productName.toString(),
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),

                        Text('Price : \$${item.unitPrice} | Qty : ${item.qty}'),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                productController.searchProductById(item.sId.toString());
                                productDialog(item, isEdit: true);
                              },
                              icon: Icon(Icons.edit, color: Colors.orange),
                            ),
                            IconButton(
                              onPressed: () async {
                              await  productController.deleteProduct(item.sId.toString()).then((onValue) async {
                                if(onValue){
                                 await fetchData();
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Product Deleted')));
                                }else{
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something Went Wrong ..')));
                                }
                              });
                              },
                              icon: Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
        productDialog(null);
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
