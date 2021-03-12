import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Some simplest connection :F


    return MaterialApp(
      home: Text('ok')
    );
  }
}

class _BluetoothAppState extends State<BluetoothApp> {

  //Inicializando uma globalKey, pois isso nos ajudá a mostrar uma SnackBar posteriormente
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //Obtém uma instância do bluetooth
  FlutterBluetoothSerial bluetooth = FlutterBluetoothSerial.instance;

  //Defina algumas variáveis, que serão necessárias posteriormente
  List<BluetoothDevice> _devicesList = [];

  BluetoothDevice _device;
  bool _connected = false;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Aqui no container vamos criar a interface do app
    );
  }
}






