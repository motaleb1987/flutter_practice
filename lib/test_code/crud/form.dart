import 'package:flutter/material.dart';
import '../widget/input_field.dart';
class CrudForm extends StatefulWidget {
  const CrudForm({super.key});

  @override
  State<CrudForm> createState() => _CrudFormState();
}

class _CrudFormState extends State<CrudForm> {
  final TextEditingController _prodNameController = TextEditingController();
  final TextEditingController _qtyController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            InputField(controller: _prodNameController,
              labelText: 'Product Name',
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 15,),
            InputField(controller: _prodNameController,
              labelText: 'Qty',
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 15,),
            InputField(controller: _prodNameController,
              labelText: 'Price',
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 15,),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
                onPressed: (){}, child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),))
            
            
          ],
        ),
      ),
    );
  }
}


