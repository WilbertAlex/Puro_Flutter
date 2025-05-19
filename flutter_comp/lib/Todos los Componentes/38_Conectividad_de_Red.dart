import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false, title: 'Flutter Demo',
      theme: ThemeData( primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//Importamos connectivity_plus: ^4.0.2 dentro de yaml

class _MyHomePageState extends State<MyHomePage> {
  String _connectionStatus = 'Unknown';

  @override
  void initState() {
    super.initState();
    checkConnectivity();
  }

  Future<void> checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    String status;
    if (connectivityResult == ConnectivityResult.mobile) {
      status = 'Connected to Mobile Network';
    } else if (connectivityResult == ConnectivityResult.wifi) {
      status = 'Connected to WiFi';
    } else {
      status = 'No Internet Connection';
    }
    setState(() {
      _connectionStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Network Connectivity')),
      body: Center(
        child: Text('Connection Status: $_connectionStatus'),
      ),
    );
  }
}

