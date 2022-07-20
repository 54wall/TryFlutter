import 'package:flutter/material.dart';

import '../effects/parallax_scrolling.dart';
import '../networking/background_parsing.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.image)),
                Tab(icon: Icon(Icons.stars)),
                Tab(icon: Icon(Icons.info)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              ExampleParallax(),
              MyHomePage(title: 'This is Test'),
              Icon(Icons.info),
            ],
          ),
        ),
      ),
    );
  }
}