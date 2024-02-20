// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'non_responsive_screen.dart';
import 'responsive_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: 1920,
      width: 1080,
      allowFontScaling: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NonResponsiveScreen())),
                    key: const Key('RaisedButton'),
                    child: const TextResponsive("Not Responsive Page"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResponsiveScreen())),
                    key: const Key('RaisedButtonResponsive'),
                    child: const TextResponsive("Responsive Page"),
                  )
                ],
              ),
              const TextResponsive(
                'Plugin example app',
                key: Key('TextResponsive'),
              ),
              const Text(
                'Plugin example app',
                key: Key('Text'),
              ),
              ContainerResponsive(
                key: const Key('ContainerResponsive'),
                height: 100,
                width: 200,
                color: Colors.green,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 100,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ContainerResponsive(
                    height: 200,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                key: const Key('Container'),
                height: 100,
                width: 200,
                color: Colors.green,
              ),
              ContainerResponsive(
                key: const Key('ContainerResponsive2'),
                height: 100,
                width: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
