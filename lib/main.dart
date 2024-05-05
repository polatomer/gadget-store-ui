import 'package:flutter/material.dart';
import 'package:gadget_store_ui/features/view/home_view.dart';
import 'package:gadget_store_ui/product/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const HomeView(),
      theme: appTheme,
    );
  }
}
