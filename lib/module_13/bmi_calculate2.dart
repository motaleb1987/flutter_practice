import 'package:flutter/material.dart';
import 'package:flutter_practice/module_13/widget/text_field2.dart';
enum WeighType{kg, pound}
enum HeightType{cm, inch, feet}
class BmiCalculateAssignment extends StatefulWidget {
  const BmiCalculateAssignment({super.key});

  @override
  State<BmiCalculateAssignment> createState() => _BmiCalculateAssignmentState();
}

class _BmiCalculateAssignmentState extends State<BmiCalculateAssignment> {
  WeighType ? weighType = WeighType.kg;
  HeightType ? heightType = HeightType.cm;

  final TextEditingController _kgWeightController = TextEditingController();
  final TextEditingController _poundWeightController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculate Assignment',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text('Select Weight type', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SegmentedButton<WeighType>(
                segments: [
                  ButtonSegment(
                    label: Text('KG'),
                      value: WeighType.kg
                  ),
                  ButtonSegment(
                      label: Text('Pound'),
                      value: WeighType.pound
                  ),
                ],
                selected: {weighType!},
              onSelectionChanged: (value){
                  setState(() {
                    weighType = value.first;
                  });
              },
            ),

            SizedBox(height: 10,),
            if(weighType == WeighType.kg)...[
              AppInputField(
                  controller: _kgWeightController,
                  labelText: 'Weigh in Kg',
                  textInputType: TextInputType.number
              ),
            ] else...[
              AppInputField(
                  controller: _kgWeightController,
                  labelText: 'Weigh in Pound',
                  textInputType: TextInputType.number
              ),
            ],
            SizedBox(height: 10,),
            Text('Select Height type', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            SegmentedButton(
                segments: [
                  ButtonSegment(
                    label: Text('CM'),
                      value: HeightType.cm,
                  ),
                  ButtonSegment(
                    label: Text('Inch'),
                    value: HeightType.inch,
                  ),
                  ButtonSegment(
                    label: Text('Feet'),
                    value: HeightType.feet,
                  ),
                ],
                selected: {heightType},
              onSelectionChanged: (value){
                  setState(() {
                    heightType = value.first;
                  });
              },
            ),
            SizedBox(height: 10,),
            if(heightType == HeightType.cm)...[
              AppInputField(
                  controller: _kgWeightController,
                  labelText: 'Heigh in CM',
                  textInputType: TextInputType.number
              ),
            ] else if(heightType == HeightType.inch)...[
              AppInputField(
                  controller: _kgWeightController,
                  labelText: 'Height in Inch',
                  textInputType: TextInputType.number
              ),
            ]else...[
              AppInputField(
                  controller: _kgWeightController,
                  labelText: 'Height in Feet',
                  textInputType: TextInputType.number
              ),
            ]

          ],

        ),
      ),
    );
  }
}
