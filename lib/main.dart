import 'package:flutter/material.dart';

import 'package:q_image_pick_web/q_image_pick_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: InkWell(
          onTap: () async {
            print('started');
            var imageData = await QImagePickWeb().getImage();
            print(imageData?.path);
            print('ended');
          },
          child: Center(
            child: Text('Button'),
          ),
        ),
      ),
    );
  }
}
