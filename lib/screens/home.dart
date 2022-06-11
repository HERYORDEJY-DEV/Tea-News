import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tea_news/components/bottom_bar.dart';
import 'package:tea_news/components/drawer_bar.dart';

// final globalScaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

TextStyle titleStyle = TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      // key: globalScaffoldKey,
      key: _key,
      bottomNavigationBar: CustomBottomBar(),
      // drawer: AppBar(),
      drawer: CustomDrawerBar(
        scaffoldState: _key.currentState,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                    icon: Icon(Icons.format_list_bulleted),
                    onPressed: () => _key.currentState!.openDrawer()),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Top News Updates',
                  style: titleStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
