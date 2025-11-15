import 'package:flutter/material.dart';
import 'package:flutter_practice/module_13/widget/text_field_widget.dart';

enum HeightType {cm, feetInch}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  HeightType ? heightType =HeightType.cm;

  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _cmHeightController = TextEditingController();
  final TextEditingController _feetHeightController = TextEditingController();
  final TextEditingController _inchHeightController = TextEditingController();

  String _bmiResult ="";
  String ? category;
  /// Condition weight (kg) / (m * m)

// 1 m = 100 cm
  double ? cmToM(){
    final cm = double.tryParse(_cmHeightController.text.trim());
    if (cm == null || cm <=0)
      return null;
    return cm/100.0;
  }

  // 1 inch = 0.0254 m
  double ? feetInchToM(){
    final feet = double.tryParse(_feetHeightController.text.trim());
    final inch = double.tryParse(_inchHeightController.text.trim());

    if (feet == null || feet <=0 || inch ==null || inch <=0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid value')));
      return null;
    };

    final totalInch = (feet*12)+inch;
    if(totalInch <=0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Value')));
      return null;
    }

    return totalInch * 0.0254;

  }

  void _calculate(){
    final weight = double.tryParse(_weightController.text.trim());
    if(weight == null || weight <=0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid data')));
      return;
    }

    final m = heightType == HeightType.cm ? cmToM() : feetInchToM();
    if(m==null){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Data')));
      return;
    }

    final bmi = weight/(m*m);
    final cat =categoryResult(bmi);

    setState(() {
      _bmiResult = bmi.toStringAsFixed(2);
      category = cat;
    });

  }

  // convert
  String categoryResult(double bmi){
    if(bmi < 18.5) return "Under weight,";
    if(bmi < 25) return "Normal";
    if(bmi < 30) return "Overweight";
    return "Obese";
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('BMI Calculate',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Weight Unit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          AppInputField(controller: _weightController,
              labelText: 'Enter Weight (in KG)',
              textInputType: TextInputType.number,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Select Height Type', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          SegmentedButton<HeightType>(
            segments: [
              ButtonSegment(
                  label: Text('CM'),
                  value: HeightType.cm
              ),
              ButtonSegment(
                  label: Text('Feet Inch'),
                  value: HeightType.feetInch
              )
            ],
            selected: {heightType!},
            onSelectionChanged: (value){
              setState(() {
                heightType = value.first;
              });
            },
          ),
          SizedBox(height: 10,),
          if(heightType == HeightType.cm)...[
            AppInputField(controller: _cmHeightController,
                labelText: 'Enter Height (in cm)',
                textInputType: TextInputType.number
            ),
          ]else...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Height Unit',  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Expanded(child:  AppInputField(controller: _feetHeightController,
                    labelText: 'Height (Feet)',
                    textInputType: TextInputType.number
                ),),
                SizedBox(width: 10,),
                Expanded(child: AppInputField(controller: _inchHeightController,
                    labelText: 'Height (Inch)',
                    textInputType: TextInputType.number
                ),),
              ],
            ),
          ],
          SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
              onPressed: _calculate, child: Text('Calculate BMI')),
          SizedBox(height: 10,),

          Text('BMI Result: $_bmiResult', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10,),
          if(category !=null)
            Text('BMI Category : ${category}'),

        ],

      ),
    );
  }
}