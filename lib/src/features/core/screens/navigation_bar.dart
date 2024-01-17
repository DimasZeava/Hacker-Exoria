import "package:app/src/constants/colors.dart";
import "package:app/src/features/authentication/screen/login/login_screen.dart";
import "package:app/src/features/core/screens/dashboard_screen.dart";
import "package:flutter/material.dart";

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _Navigation();
}

class _Navigation extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    List<Widget> widgetList = const [
      Dashboard(),
      Text("Scan", style: TextStyle(color: Colors.black, fontSize: 30)),
      Text("Profile", style: TextStyle(color: Colors.black, fontSize: 30)),
    ];
    return Scaffold(
      body: Center(
        child: widgetList[index]
        ),
          bottomNavigationBar: NavigationBar(
          indicatorColor: PrimaryColor,
          animationDuration: const Duration(milliseconds: 200),
          height: 100,
          selectedIndex: index,
          onDestinationSelected: (int newIndex) {
            setState(() {
              index = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.camera_alt_outlined),
              label: "Scan",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline_outlined),
              label: "Home",
            ),
          ]),
    );
  }
}
