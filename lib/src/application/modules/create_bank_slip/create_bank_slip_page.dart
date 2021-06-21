import 'package:flutter/material.dart';

class CreateBankSlipPage extends StatefulWidget {
  const CreateBankSlipPage({Key? key}) : super(key: key);

  @override
  _CreateBankSlipPageState createState() => _CreateBankSlipPageState();
}

class _CreateBankSlipPageState extends State<CreateBankSlipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bank Slip Info'),
      ),
    );
  }
}
