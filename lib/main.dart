import 'package:flutter/material.dart';
import 'package:shopapp/screens/product_overview.dart';
import 'package:shopapp/screens/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=> ProductOverviewScreen(),
        '/product_item':(context)=>ProductDetailScreen( 'This')
      },
    );
  }
}

class MyHomePage  extends StatelessWidget {
  const MyHomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HEllo"),
      ),
    );
  }
}
