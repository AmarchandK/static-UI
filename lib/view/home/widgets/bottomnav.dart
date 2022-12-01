import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          unselectedItemColor: Colors.grey[400],
          selectedItemColor: Colors.indigo[300],
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(CupertinoIcons.calendar),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt_circle),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
