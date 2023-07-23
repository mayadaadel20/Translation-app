import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GoogleTranslator translator = GoogleTranslator();

  String text = 'Hello, How are you?';

  void translate() {
    translator.translate(text, to: "hi").then((value) => text = value as String);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Language Translation"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            ElevatedButton(
              child: const Text('Translate the text'),
              onPressed: () {
                translate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
