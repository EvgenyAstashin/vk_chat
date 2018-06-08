import 'package:flutter/material.dart';
import 'package:vk_chat/vk.dart';

class HomePage extends StatefulWidget {
  final String title = "home page";

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget currentPage = new Center();
  VK vk = new VK();

  @override
  Widget build(BuildContext context) {
    vk.login((isLoggedIn) => print("loged in"));

    return new Scaffold(
      drawer: _buildDrawer(),
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
      ),
      body: currentPage,
    );
  }

  Drawer _buildDrawer() {
    var header = _buildHeader();

    var messages = _buildListItem(Icons.mail, "Сообщения", _onMessagesTap);
    var friends = _buildListItem(Icons.person, "Друзья", _onFriendsTap);
    var settings = _buildListItem(Icons.settings, "Настройки", _onSettingsTap);
    var logout = _buildListItem(Icons.exit_to_app, "Выход", _onLogoutTap);

    var listView = new ListView(children: [header,
        messages,
        friends,
        settings,
        logout]);

    return new Drawer(child: listView);
  }

  Widget _buildHeader() {
    var fontFamily = "Roboto";
    var accountEmail = new Text("dnsoftindia@gmail.com",
        style: new TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 14.0,
            fontFamily: fontFamily));
    var accountName = new Text("DN Soft India",
        style: new TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 18.0,
            fontFamily: fontFamily));
    var accountPicture = new CircleAvatar(
        child: new Icon(Icons.person_outline),
        backgroundColor: Theme.of(context).accentColor);

    return new UserAccountsDrawerHeader(
      accountEmail: accountEmail,
      accountName: accountName,
      currentAccountPicture: accountPicture,
      decoration: new BoxDecoration(color: Theme.of(context).cardColor),
    );
  }

  ListTile _buildListItem(IconData icon, String title, GestureTapCallback callback) {
    return new ListTile(
        leading: new Icon(icon),
        title: new Text(title),
        onTap: callback);
  }

  void _onMessagesTap() {
    setState(() {

    });
  }

  void _onFriendsTap() {
    setState(() {

    });
  }

  void _onSettingsTap() {

  }

  void _onLogoutTap() {

  }
}
