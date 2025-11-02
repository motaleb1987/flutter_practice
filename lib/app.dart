import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/module_11/class_2_packg.dart';
import 'package:flutter_practice/module_11/class_3_expended.dart';
import 'package:flutter_practice/module_11/todo_assignment.dart';
import 'package:flutter_practice/module_11/tour_pkg_fronted.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_practice/home.dart';
import 'package:flutter_practice/module_11/responsive.dart';
import 'package:flutter_practice/module_7/class_2_button.dart';
import 'package:flutter_practice/module_8/class_1_input.dart';
import 'package:flutter_practice/module_9/class_2_stack.dart';
import 'package:flutter_practice/module_9/listView.dart';
import 'package:flutter_practice/module_9/theme_test.dart';
import 'package:flutter_practice/test_code/card_design.dart';
import 'package:flutter_practice/test_code/stack_1.dart';
import 'package:flutter_practice/theme/app_theme.dart';

import 'module_8/dashboard.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blue
            ),

            themeMode: ThemeMode.dark,
            title: "Fullter Practise",
            //color: Colors.white,
            //home: Home(),
            // home: ButtonGrp(),
            //home: FlutterInput(),
            home: ThemeTest(),
            initialRoute: 'tour_pkg',
            routes: {
              'login': (context)=>ThemeTest(),
              'home': (context)=>Home(),
              'form':(context)=>FlutterInput(),
              'button': (context)=>ButtonGrp(),
              'dashboard': (context)=>Dashboard(),
              'list': (context)=>Lview(),
              'stack': (context)=>Class2Stack(),
              'res': (context)=>Responsive(),
              'stack1': (context)=>Stack1(),
              'card_bongo': (context)=>BongoAcademy(),
              'res_pkg': (context)=>ResponsivePkg(),
              'expended': (context)=>ExpeDisplay(),
              'todo_list': (context)=>MyTodolist(),
              'tour_pkg': (context)=>TourPkg(),
            },

          );
        });


  }
}