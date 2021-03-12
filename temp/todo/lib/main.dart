
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/item.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pytrade',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();
  
  HomePage(){
    items=[];

  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskCtrl = TextEditingController();

  void add(){
    if (newTaskCtrl.text.isEmpty) return;
    setState(() {
          widget.items.add(Item(title:newTaskCtrl.text, done:false));
          newTaskCtrl.text='';
        });

  }

  void remove(int index) {
    setState(() {
          widget.items.removeAt(index);
        });
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data');

    if (data != null) {
      Iterable decoded = jsonDecode(data);
      List<Item> result = decoded.map((x) => Item.fromJson(x)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        // Cria uma forma de texto 
        title: TextFormField(
          controller: newTaskCtrl,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24 
          ),
          decoration: InputDecoration(
            labelText: 'Nova Tarefa', 
            labelStyle: TextStyle(
              color: Colors.white
            )
          ),
          )
      ),

      body: ListView.builder(
        itemCount: widget.items.length, 
        itemBuilder: (BuildContext ctxt, int index){
          final item = widget.items[index];
          return Dismissible(
            key: Key(item.title),
            child:CheckboxListTile(
            activeColor: Colors.orange,
            title: Text(item.title),
            
            value: item.done,
            onChanged: (value) {
              setState(() {
                item.done=value;
                            });
            },
          ),
          background: Container (
            color: Colors.orange.withOpacity(0.2),
            ),
          onDismissed: (direction) {
            remove(index);
          },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        ),
    );
  }
}









