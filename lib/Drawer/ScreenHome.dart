import 'package:flutter/material.dart';

import '../main.dart';
import 'ScreenGridview.dart';

void main() {
  runApp(MyApp());
}

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  String mainProfilePic =
      "https://campussafetyconference.com/wp-content/uploads/2020/08/iStock-476085198.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body:  ScreenGridView(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/login.jpg"),
                      fit: BoxFit.cover)),
              accountName: const Text("karthika",style: TextStyle(color: Colors.black),),
              accountEmail: const Text("kgd@gmail.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(mainProfilePic),
              ),
            ),
             ListTile(
              leading: const Icon(Icons.message),
              title: Text('Messages'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

