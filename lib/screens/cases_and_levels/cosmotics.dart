import 'package:flutter/material.dart';

class CosmoticsPage extends StatefulWidget {
  @override
  _CosmoticsPageState createState() => _CosmoticsPageState();
}

class _CosmoticsPageState extends State<CosmoticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cosmotics'),
      ),
      body: Center(
        child: Text('Your Cosmotics Page Content'),
      ),
    );
  }
}
