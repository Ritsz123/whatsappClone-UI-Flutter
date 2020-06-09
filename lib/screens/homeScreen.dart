import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/CallsScreen.dart';
import 'package:whatsappclone/screens/CameraScreen.dart';
import 'package:whatsappclone/screens/ChatScreen.dart';
import 'package:whatsappclone/screens/StatusScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Clone'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
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
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          CallsScreen(),
          StatusScreen(),
        ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
