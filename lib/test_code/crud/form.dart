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


  productDialog(){
     TextEditingController proNameController = TextEditingController();
     TextEditingController qtyController = TextEditingController();
     TextEditingController priceController = TextEditingController();

     showDialog(
         context: context,
         builder: (context) => AlertDialog(
           title: Text('Product Update'),
           content: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               TextField(
                 controller: proNameController,
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
               SizedBox(height: 10,),

               TextField(
                 controller: qtyController,
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
               SizedBox(height: 10,),

               TextField(
                 controller: priceController,
                 decoration: InputDecoration(labelText: 'Unit Price',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                    // borderSide: BorderSide(color: Colors.green)
                   ),
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.grey),

                   ),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.orange)
                   ),
                 ),
               ),
               SizedBox(height: 10,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   TextButton(onPressed: (){
                     Navigator.pop(context);
                   }, child: Text('Cancel', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)),

                   ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                         foregroundColor: Colors.white,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                         )
                       ),
                       onPressed: (){}, child: Text('Update', style: TextStyle(fontWeight: FontWeight.bold),))

                 ],
               ),


             ],
           ),





         ),
     );


  }




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
        child: Column(
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

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                  onPressed: (){}, child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
            ),
            SizedBox(height: 20,),
            Flexible(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return Card(
                      child: ListTile(
                        title: Text(' iPhone 16 pro', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('Price : 50k tk | Qty : 2',style: TextStyle(fontSize: 14)),
                        leading: Text('${index+1}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: (){
                              productDialog();
                            }, icon: Icon(Icons.edit, color: Colors.blueGrey,size: 30,)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,size: 30,))
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],

        ),
      ),
    );
  }
}


