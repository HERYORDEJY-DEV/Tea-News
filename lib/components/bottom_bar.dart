import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import "package:flutter/material.dart";

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 2;

  void changePage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BubbleBottomBar(
      opacity: 1,
      currentIndex: currentIndex,
      onTap: changePage,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(16),
      ),
      elevation: 8,
      // fabLocation: BubbleBottomBarFabLocation.end, //new
      hasNotch: true, //new
      hasInk: true, //new, gives a cute ink effect
      inkColor: Colors.black12, //optional, uses theme color if not specified
      items: <BubbleBottomBarItem>[
        const BubbleBottomBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 20,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const BubbleBottomBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.search,
            size: 20,
            color: Colors.white,
          ),
          title: Text(
            "Search",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const BubbleBottomBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.bookmark,
            color: Colors.black,
            size: 30,
          ),
          activeIcon: Icon(
            Icons.bookmark_outline,
            color: Colors.white,
            size: 20,
          ),
          title: Text(
            "Bookmarks",
            style: TextStyle(color: Colors.white),
          ),
        ),
        BubbleBottomBarItem(
          showBadge: false,
          backgroundColor: Colors.black,
          icon: Container(
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 1)),
                ],
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/yusuf2.png'),
                    fit: BoxFit.cover),
                shape: BoxShape.circle),
            width: 30,
            height: 30,
          ),
          activeIcon: Container(
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 1)),
                ],
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/yusuf2.png'),
                    fit: BoxFit.cover),
                shape: BoxShape.circle),
            width: 30,
            height: 30,
          ),
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

// class CustomBottomBarItem extends StatelessWidget {
//   const CustomBottomBarItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BubbleBottomBarItem(
//       showBadge: true,
//       badge: Text("5"),
//       badgeColor: Colors.deepPurpleAccent,
//       backgroundColor: Colors.red,
//       icon: Icon(
//         Icons.dashboard,
//         color: Colors.black,
//       ),
//       activeIcon: Icon(
//         Icons.dashboard,
//         color: Colors.red,
//       ),
//       title: Text("Home"),
//     );
//   }
// }
