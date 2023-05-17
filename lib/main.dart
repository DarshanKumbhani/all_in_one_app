import 'package:all_in_one_app/provider/all_provider.dart';
import 'package:all_in_one_app/view/home.dart';
import 'package:all_in_one_app/view/open_link.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => All(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:{
          '/':(context) => Home_Screen(),
          'link':(context) => Open(),
        },
      ),
    )
  );
}

