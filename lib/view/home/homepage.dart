import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.imge});
  final String imge;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              h10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Daily',
                            style: TextStyle(
                                fontSize: 50,
                                color: wColor,
                                fontWeight: FontWeight.bold)),
                        Text('Recommended',
                            style: TextStyle(color: greyColor, fontSize: 25))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.search, color: wColor))
                  ],
                ),
              ),
              h20,
              Container(
                height: size.height - 350,
                width: size.width - 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imge,
                      ),
                      fit: BoxFit.fill),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 21),
                    child: Container(
                      width: size.width - 90,
                      decoration: BoxDecoration(
                          color: wColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        selectedColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.black),
                        ),
                        title: const Text('John Walker'),
                        subtitle: const Text('Website Content Writer'),
                        trailing: SizedBox(
                            width: 50,
                            child: Row(children: const [
                              Icon(Icons.star, color: Colors.amber),
                              Text(
                                '4.9',
                                style: TextStyle(color: bColor),
                              )
                            ])),
                      ),
                    ),
                  ),
                ),
              ),
              h20,
              const Divider(
                  thickness: 6, color: wColor, indent: 160, endIndent: 160),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
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
      ),
    );
  }
}
