
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}


class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Center(child: GestureDetector(child: Text('Contador: $counter'), 
        onTap: () {
          setState(() {
             counter++; 
          });
          
        })),
      );
  }
}



