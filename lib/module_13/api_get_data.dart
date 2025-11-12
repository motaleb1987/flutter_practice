import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCalled extends StatefulWidget {
  const ApiCalled({super.key});

  @override
  State<ApiCalled> createState() => _ApiCalledState();
}

class _ApiCalledState extends State<ApiCalled> {
  List products = [];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final url = Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    final response = await http.get(url);
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      setState(() {
        products = jsonResponse['data'];
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        title: Text(
          'API Called',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: isLoading ? Center(child: CircularProgressIndicator()) : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return Card(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 140, child: Image.network(item['Img'])),
                  Text(
                    item['ProductName'],
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),

                  Text('Price : \$${item['UnitPrice']} | Qty : ${item['Qty']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
