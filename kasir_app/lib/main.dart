import 'package:flutter/material.dart';
import 'dart:ui_web' as ui;
import 'dart:html' as html;

void main() {
  ui.platformViewRegistry.registerViewFactory(
    'kasir-iframe',
    (int viewId) => html.IFrameElement()
      ..src = 'assets/assets/kasir.html'
      ..style.border = 'none'
      ..style.width = '100%'
      ..style.height = '100%',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SDM Kasir',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: HtmlElementView(viewType: 'kasir-iframe'),
        ),
      ),
    );
  }
}
