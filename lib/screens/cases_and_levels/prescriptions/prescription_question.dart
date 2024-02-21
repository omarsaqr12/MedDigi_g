import 'package:flutter/material.dart';

class PrescriptionQuestionPage extends StatefulWidget {
  final int levelNumber;
  PrescriptionQuestionPage({required this.levelNumber});

  @override
  _PrescriptionQuestionPageState createState() =>
      _PrescriptionQuestionPageState();
}

class _PrescriptionQuestionPageState extends State<PrescriptionQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question'),
      ),
      body: Center(
        child: Text('Q1'),
      ),
    );
  }
}
