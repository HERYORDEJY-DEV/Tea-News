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

TextStyle titleStyle = const TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      // key: globalScaffoldKey,
      key: _key,
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            // onPressed: () => {},
            onPressed: () =>
                _key.currentState!.openDrawer(), // <-- Opens drawer
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 40,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        foregroundColor: Colors.transparent,
      ),
      bottomNavigationBar: const CustomBottomBar(),
      // drawer: AppBar(),
      drawer: CustomDrawerBar(
        closeDrawer: () => _key.currentState!.closeDrawer(),
        scaffoldState: _key.currentState,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Top News Updates',
                style: titleStyle,
              ),
            ),
            IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () => _key.currentState!.openDrawer(),
              // Scaffold.of(context).openDrawer(), // <-- Opens drawer
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.black,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
