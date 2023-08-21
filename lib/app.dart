import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

import 'package:mi_finca/screens/welcome_screen.dart';

class MiFinca extends StatelessWidget {
  const MiFinca({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mi finca',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const WelcomeScreen(),
      );

    // return MultiProvider(
    //   providers: [],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Mi finca',
    //     theme: ThemeData(
    //       scaffoldBackgroundColor: Colors.white,
    //     ),
    //     home: WelcomeScreen(),
    //   ),
    // );
  }
}
