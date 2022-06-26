import 'package:flutter/material.dart';

class CustomDrawerBar extends StatefulWidget {
  final scaffoldState;

  final VoidCallback closeDrawer;

  const CustomDrawerBar(
      {Key? key, required this.scaffoldState, required this.closeDrawer})
      : super(key: key);

  @override
  State<CustomDrawerBar> createState() => _CustomDrawerBarState();
}

TextStyle titleStyle = const TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.bold,
);

TextStyle itemTitleStyle = const TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle logoutTitleStyle = const TextStyle(
  color: Colors.black,
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
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'About',
              style: itemTitleStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Profile',
              style: itemTitleStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Settings',
              style: itemTitleStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'FAQ',
              style: itemTitleStyle,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Help',
              style: itemTitleStyle,
            ),
          ),
          const SizedBox(
            //  ,
            height: 20,
          ),
          IconButton(
            onPressed: widget.closeDrawer,
            icon: Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular((50)))),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                decoration: const BoxDecoration(color: Colors.white),
                child: Center(
                  child: Text(
                    'Logout',
                    style: logoutTitleStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
