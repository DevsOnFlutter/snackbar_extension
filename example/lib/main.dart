import 'package:flutter/material.dart';
import 'package:snackbar_extension/snackbar_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Extension',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SnackBar Extension'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Register Classic SnackBar"),
              onPressed: () {
                SnackBarExtension.register(
                  name: "Classic",
                  snackBar: const SnackBar(
                    content: Text("Classic"),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Register Modern SnackBar"),
              onPressed: () {
                SnackBarExtension.register(
                  name: "Modern",
                  snackBar: const SnackBar(
                    content: Text("Modern"),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Change Modern Background Color"),
              onPressed: () {
                SnackBarExtension.of(context, "Modern")
                    .setBackgroundColor(Colors.blue);
              },
            ),
            ElevatedButton(
              child: const Text("Show Classic SnackBar"),
              onPressed: () {
                SnackBarExtension.of(context, "Classic").show();
              },
            ),
            ElevatedButton(
              child: const Text("Show Modern SnackBar"),
              onPressed: () {
                SnackBarExtension.of(context, "Modern").show();
              },
            ),
          ],
        ),
      ),
    );
  }
}
