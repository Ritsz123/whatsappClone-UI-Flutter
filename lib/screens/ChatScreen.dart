import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/component/personChat.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
        child: Container(
          child: ListView(
            children: <Widget>[
              //messages From to be displayed
              PersonChat(
                personName: 'Ritesh Khadse',
                recentMessage: 'Hello how are you.?',
                timeOfLastMsg: '3:05 pm',
                profile: AssetImage('images/profile_compressed.jpeg'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade500,
        child: Icon(
          Icons.message,
        ),
        onPressed: () {
          print('FAB pressed');
        },
      ),
    );
  }
}
