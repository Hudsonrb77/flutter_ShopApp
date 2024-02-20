import 'package:flutter/material.dart';
import 'package:shop/components/utils/app_routes.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';

import 'pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.purple,
          secondary: Colors.deepOrange,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Lato',
      ),
      home: ProductsOverview(),
      routes: {
        AppRoutes.product_detail: (ctx) => CounterPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
