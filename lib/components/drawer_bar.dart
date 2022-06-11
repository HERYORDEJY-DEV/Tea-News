import 'package:flutter/material.dart';

class CustomDrawerBar extends StatefulWidget {
  final scaffoldState;

  const CustomDrawerBar({Key? key, required this.scaffoldState})
      : super(key: key);

  @override
  State<CustomDrawerBar> createState() => _CustomDrawerBarState();
}

TextStyle titleStyle = TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.bold,
);

TextStyle itemTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

class _CustomDrawerBarState extends State<CustomDrawerBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      child: Column(
        children: [
          DrawerHeader(
            child: Text(
              'Tea\nNews',
              textAlign: TextAlign.center,
              style: titleStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'About',
              style: itemTitleStyle,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Profile',
              style: itemTitleStyle,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Settings',
              style: itemTitleStyle,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'FAQ',
              style: itemTitleStyle,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Help',
              style: itemTitleStyle,
            ),
          ),
          SizedBox(
            //  ,
            height: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular((50)))),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
