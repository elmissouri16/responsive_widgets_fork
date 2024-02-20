// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class NonResponsiveScreen extends StatefulWidget {
  const NonResponsiveScreen({super.key});

  @override
  _NonResponsiveScreenState createState() => _NonResponsiveScreenState();
}

class _NonResponsiveScreenState extends State<NonResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Responsive Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text('Plugin example app'),
            Container(
              height: 100,
              width: 200,
              color: Colors.green,
            ),
            TextButton(
              onPressed: () {},
              child: Container(),
            ),
            const Icon(Icons.ac_unit),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit),
            ),
          ],
        ),
      ),
    );
  }
}
