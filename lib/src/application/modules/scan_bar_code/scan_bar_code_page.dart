import 'package:flutter/material.dart';

class ScanBarCodePage extends StatefulWidget {
  const ScanBarCodePage({Key? key}) : super(key: key);

  @override
  _ScanBarCodePageState createState() => _ScanBarCodePageState();
}

class _ScanBarCodePageState extends State<ScanBarCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Scan Bar Code'),
      ),
    );
  }
}
