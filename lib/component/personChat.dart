import 'package:flutter/material.dart';

class PersonChat extends StatelessWidget {
  PersonChat(
      {this.personName, this.profile, this.recentMessage, this.timeOfLastMsg});

  final ImageProvider profile;
  final String personName;
  final String recentMessage;
  final String timeOfLastMsg;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print('open messasges Screen');
      },
      leading: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: profile,
            fit: BoxFit.cover,
          ),
        ),
      ), //change to rounded icon
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(personName),
          Text(
            timeOfLastMsg,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
      subtitle: Text(recentMessage),
    );
  }
}
