import 'package:flutter/material.dart';
import 'package:flutter_practice/module_12/widget/calculator_button.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output ='0';
  String _input ='0';
  String _operator ='';
  double num1 =0;
  double num2 =0;

  void buttonPress(String value){
   // print('Button pressed $value');
    setState(() {
      if(value=='C'){
         _output ='0';
         _input ='0';
         _operator ='';
         num1 =0;
         num2 =0;

      }else if(value == '='){
        num2 = double.parse(_input);
        if(_operator == '+'){
          _output = (num1 + num2).toString();
        } else if(_operator == '-'){
           _output = (num1 - num2).toString();
        }else if(_operator == '*'){
          _output = (num1 * num2).toString();
        }else if(_operator == '÷'){
          _output= num2 != 0 ? (num1 / num2).toString() : 'Error';
        }
      }else if(['+','-','*','÷'].contains(value)){
         num1 = double.parse(_input);
         _operator = value;
         _input ='';

      }else{
        if(_input == '0'){
          _input = value;
        }else{
          _input += value;
        }
        _output = _input;
      }
      print(_output);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Text(
                      '${num1} ${_operator} ${_input}',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      _output,
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                BuildButton(onclick: () => buttonPress('7'), text: '7'),
                BuildButton(onclick: () => buttonPress('8'), text: '8'),
                BuildButton(onclick: () => buttonPress('9'), text: '9'),
                BuildButton(onclick: () => buttonPress('÷'), text: '÷', color: Colors.orange),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () => buttonPress('4'), text: '4'),
                BuildButton(onclick: () => buttonPress('5'), text: '5'),
                BuildButton(onclick: () => buttonPress('6'), text: '6'),
                BuildButton(onclick: () => buttonPress('*'), text: '*', color: Colors.orange),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () => buttonPress('1'), text: '1'),
                BuildButton(onclick: () => buttonPress('2'), text: '2'),
                BuildButton(onclick: () => buttonPress('3'), text: '3'),
                BuildButton(onclick: () => buttonPress('-'), text: '-', color: Colors.orange),
              ],
            ),
            Row(
              children: [
                BuildButton(onclick: () => buttonPress('C'), text: 'C'),
                BuildButton(onclick: () => buttonPress('0'), text: '0'),
                BuildButton(onclick: () => buttonPress('='), text: '=', color: Colors.orange,),
                BuildButton(onclick: () => buttonPress('+'), text: '+', color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
