import 'package:flutter/material.dart';

class CreateAvatarPage extends StatefulWidget {
  @override
  _CreateAvatarPageState createState() => _CreateAvatarPageState();
}

class _CreateAvatarPageState extends State<CreateAvatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Avatar'),
      ),
      body: Center(
        child: Text('Create Avatar'),
      ),
    );
  }
}
