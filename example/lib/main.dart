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
          'Hello {fw: bold, ws: 20, ls: 10, bgColor: #dedede}`world! 123`',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 24,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
