import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HFFHomePage(title: 'HUFS Flutter Festival Home'),
    );
  }
}

class HFFHomePage extends StatefulWidget {
  const HFFHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HFFHomePage> createState() => _HFFHomePageState();
}

class _HFFHomePageState extends State<HFFHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: const BorderSide(
                  color: Colors.black,
                  width: 5.0,
                ),
              ),
            ),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 5,
            child: Icon(
              Icons.flutter_dash,
              color: Colors.black,
              size: (MediaQuery.of(context).size.height / 5) * 0.8,
            ),
          ),
        ),
      ),
    );
  }
}
