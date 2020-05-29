import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/CallsScreen.dart';
import 'package:whatsappclone/screens/ChatScreen.dart';
import 'package:whatsappclone/screens/StatusScreen.dart';
import 'package:whatsappclone/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WaClone'),
          actions: <Widget>[
            IconButton(
              tooltip: 'Search',
              onPressed: () {
                //implement search
              },
              icon: Icon(Icons.search),
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    child: Text('New Broadcast'),
                  ),
                  PopupMenuItem(
                    child: Text('Whatsapp Web'),
                  ),
                  PopupMenuItem(
                    child: Text('Starred Messages'),
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
                  ),
                ];
              },
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text(
                  'CHATS',
                  style: kTabTextStyle,
                ),
              ),
              Tab(
                child: Text(
                  'STATUS',
                  style: kTabTextStyle,
                ),
              ),
              Tab(
                child: Text(
                  'CALLS',
                  style: kTabTextStyle,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('Camera'),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
