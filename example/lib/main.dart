import 'package:flutter/material.dart';
import 'package:awesome_rich_text/awesome_rich_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Rich Text Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AwesomeRichTextExample(),
    );
  }
}

class AwesomeRichTextExample extends StatelessWidget {
  const AwesomeRichTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AwesomeRichText(
          'Hello there!',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 24,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
