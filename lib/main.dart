import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model/MessagingController.dart';
import 'Screens/listingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(_)=>MessageController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:   ListingScreen(),
      ),
    );
  }
}
