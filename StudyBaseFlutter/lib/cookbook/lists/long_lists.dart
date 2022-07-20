//注意需要在pubspec.yaml引入transparent_image: ^2.0.0
import 'package:flutter/material.dart';

void main() => runApp( MyApp(items: List<String>.generate(10000, (index) => 'Item $index'),));

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key? key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(items[index]),
                )),
      ),
    );
  }
}
