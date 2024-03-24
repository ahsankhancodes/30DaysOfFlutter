import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final _img_url =
        "https://pbs.twimg.com/profile_images/1683063619691630593/bny5ZJfN_400x400.jpg";

    return Drawer(
      backgroundColor: Colors.grey.shade600,
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text(
                "Ahsan Khan",
              ),
              accountEmail: Text(
                "ahsankhancodes@gmail.com",
              ),
              currentAccountPicture: Image.network(_img_url),
              currentAccountPictureSize: Size.square(50),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Mail",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
