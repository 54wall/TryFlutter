//注意需要在pubspec.yaml引入transparent_image: ^2.0.0
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Fade in images';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // body:,
      ),
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildSubtitle(BuildContext context) {
    // TODO: implement buildSubtitle
    return Text(
      heading,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  @override
  Widget buildTitle(BuildContext context) {
    // TODO: implement buildTitle
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem {
  String sender;
  String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildSubtitle(BuildContext context) {
    // TODO: implement buildSubtitle
    return Text(sender);
  }

  @override
  Widget buildTitle(BuildContext context) {
    // TODO: implement buildTitle
    return Text(body);
  }
}
