// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  _ResponsiveScreenState createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const TextResponsive('Plugin example app'),
            ContainerResponsive(
              height: 100,
              width: 200,
              color: Colors.green,
            ),
            TextButton(
              child: Container(),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
