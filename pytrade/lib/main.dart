import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: containers(),
        )),
      ),
    );
  }
}




Widget container(cor, int n) => Container(
                height: 100,
                width: 100,
                color: cor,
                child: Text('Container ${n}'),
                
                );


List<Widget> containers() {
  return [container(Colors.black,4),container(Colors.blue,10)];

}

