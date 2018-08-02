import 'package:flutter/material.dart';
import 'package:vk_chat/models/profile.dart';

class FriendItem extends StatefulWidget {

  Profile user;

  FriendItem(Profile user) : user = user,
        super(key: new ObjectKey(user));

  @override
  State<StatefulWidget> createState() {
    return new FriendItemState(user);
  }
}

class FriendItemState extends State<FriendItem> {

  Profile user;

  FriendItemState(this.user);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        leading: new Container(
            width: 40.0,
            height: 40.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(user.avatar)
                )
            )),
        title: new Row(
          children: <Widget>[
            new Expanded(child: new Text("${user.firstName} ${user.lastName}")),
          ],
        ),
      trailing: new IconButton(
        icon: new Icon(Icons.chat),
        onPressed: () {

        },
      ),
    );
  }
}