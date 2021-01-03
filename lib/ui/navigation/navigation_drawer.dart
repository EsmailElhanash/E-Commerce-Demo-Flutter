import 'package:ecommece/screens/login.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        color: Colors.blue.shade900,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 35,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ButtonTheme(
                padding: const EdgeInsets.all(8.0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minWidth: 0,
                height: 0,
                child: FlatButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()))
                  },
                  child: Text(
                    "Log In / Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ListTile(
          leading: Icon(
            Icons.home,
          ),
          title: Text("Home")),
      ListTile(
          leading: Icon(
            Icons.account_circle,
          ),
          title: Text("My Account")),
      ListTile(
          leading: Icon(
            Icons.my_library_books,
          ),
          title: Text("My WishList"))
    ]);
  }
}
