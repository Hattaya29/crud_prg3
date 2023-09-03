import 'package:flutter/material.dart';
import 'package:prg3/Screen/home.dart';
import 'package:prg3/Screen/login.dart';
import 'package:prg3/models/config.dart';
import 'package:prg3/models/users.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "N/A";
    String accountEmail = "N/A";
    String accountUrl = "https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-6/358586624_2483141531866809_48356667851495574_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=ONW-yGapPu4AX8Zr4aA&_nc_ht=scontent-sin6-2.xx&oh=00_AfDreg-gfmgPfVQUjqALiVVApj6WHFVfpEQTDmIvim7Ebg&oe=64F4EB48";
    Users user = Configure.login;
    //print(user.toJson().toString());
    if (user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(accountName),
            accountEmail: Text(accountEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(accountUrl),
              backgroundColor: Colors.white,
            ),
            ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Login"),
            onTap: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          )
        ],
      ),
    );
  }
}