//注意需要在pubspec.yaml引入transparent_image: ^2.0.0
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: CustomScrollView(slivers: [
          const SliverAppBar(
            title: Text(title),
            floating: true,
            flexibleSpace: Placeholder(),
            expandedHeight: 200,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              title: Text('Item #$index'),
            ),
            childCount: 1000,
          ))
        ]),
      ),
    );
  }
}
