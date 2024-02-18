import 'package:flutter/material.dart';

class PrescriptionsPage extends StatefulWidget {
  @override
  _PrescriptionsPageState createState() => _PrescriptionsPageState();
}

class _PrescriptionsPageState extends State<PrescriptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prescriptions'),
      ),
      body: Center(
        child: Text('Your Prescriptions Page Content'),
      ),
    );
  }
}
