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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(10, 120, 10, 0),
                child: Image.asset("assets/image/logo.png",
                    width: 50, height: 50)),
            _textField(),
            _ElevatedButton(),
            _TextButton(),
          ],
        ),
      ),
    );
  }
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(20, 90, 20, 0),
        width: 400,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        width: 400,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    ],
  );
}

Widget _ElevatedButton() {
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.all(10.0)),
      Card(
        child: Container(
          height: 40,
          width: 330,
          child: ElevatedButton(
            onPressed: () {}, // Respon ketika button ditekan
            child: Text("Log In"),
          ),
        ),
      ),
    ],
  );
}

Widget _TextButton() {
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 20.0)),
      TextButton(
        onPressed: () {}, // Respon ketika button ditekan
        child: Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ],
  );
}
