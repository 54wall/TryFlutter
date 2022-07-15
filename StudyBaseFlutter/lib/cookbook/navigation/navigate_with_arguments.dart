import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'navigate_with_arguments',
    home: const HomeScreen(),
    routes: {
      ExtractArgumentsScreen.routeName: (context) =>
          const ExtractArgumentsScreen()
    },
    onGenerateRoute: (settings) {
      if (settings.name == PassArgumentsScreen.routeName) {
        final args = settings.arguments as ScreenArguments;

        return MaterialPageRoute(builder: (context) {
          return PassArgumentsScreen(title: args.title, message: args.message);
        });
      }
    },
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Navigate to screen that extracts arguments'),
              onPressed: () {
                Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(
                      'Extract Arguments Screen',
                      'This message is extracted in the build method.',
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Navigate to a named that accepts arguments'),
              onPressed: () {
                Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(
                      'Accept Arguments Screen',
                      'This message is extracted in the onGenerateRoute '
                          'function.',
                    ));
              },
            ),
          ],
        ),


      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  const ExtractArgumentsScreen({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String message;

  final String title;

  const PassArgumentsScreen(
      {super.key, required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
