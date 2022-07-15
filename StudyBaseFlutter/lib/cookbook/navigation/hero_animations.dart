import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Passing Data',
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailScreen();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Center(
          child: Hero(
        tag: 'imageHero',
        child: Image.network('https://picsum.photos/250?image=9'),
      )),
    ));
  }
}

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}
