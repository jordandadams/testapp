import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.graduationCap,
            size: 20,
          ),
          label: 'Topics',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.bolt,
            size: 20,
          ),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.userCircle,
            size: 20,
          ),
          label: 'Profile',
        ),
      ],
      fixedColor: Color.fromARGB(255, 28, 153, 255),
      //handle taps on navbar -- returns index for item tapped
      onTap: (int idx) {
        switch (idx) {
          case 0:
            // first icon do nothing
            break;
          case 1:
            // second icon go to about page
            Navigator.pushNamed(context, '/about');
            break;
          case 2:
            // third icon go to about page
            Navigator.pushNamed(context, '/profile');
            break;
        }
      },
    );
  }
}