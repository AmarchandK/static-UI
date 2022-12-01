import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:aimplatfarm_ui/view/description/widgets/contents.dart';
import 'package:aimplatfarm_ui/view/description/widgets/image_swipe.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  Description({super.key});
  final List imges = ['assets/1.png', 'assets/2.png', 'assets/group.png'];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SwipableImage(size: size, imges: imges),
              Contents(size: size, imges: imges)
            ],
          ),
          Align(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[800],
              ),
              child: ListTile(
                title: const Text(
                  'John walker',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: wColor,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Web Content Writer',
                  style: TextStyle(color: Colors.grey[200]),
                ),
                trailing: SizedBox(
                    width: 50,
                    child: Row(children: const [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '4.9',
                        style: TextStyle(color: wColor),
                      )
                    ])),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/group.png',
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

