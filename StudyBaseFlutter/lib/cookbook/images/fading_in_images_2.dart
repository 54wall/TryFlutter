import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Fade in images 2';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
              placeholder: 'images/loading.gif',//官方例子中放入到了/assets,这里我放入的是/images
              image: 'https://picsum.photos/250?image=9'),
        ),
      ),
    );
  }
}
