import 'package:flutter/material.dart';
import 'package:responsividade/layouts/desktop/desktop_layout.dart';
import 'package:responsividade/layouts/mobile/mobile_layout.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < 600){
            return const MobileLayout();
          }
          return const DesktopLayout();
        },
      )
    );
  }
}