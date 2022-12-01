import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:aimplatfarm_ui/view/description/widgets/contents.dart';
import 'package:aimplatfarm_ui/view/description/widgets/image_swipe.dart';
import 'package:aimplatfarm_ui/view/description/widgets/tile.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  Description({super.key});
  final List<String> imges = [
    'assets/1.png',
    'assets/2.png',
    'assets/group.png'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bColor,
      body: Stack(
        children: [
          Column(
            children: [
              SwipableImage(size: size, imges: imges),
              Contents(size: size, imges: imges)
            ],
          ),
          const Align(
            child: UserTile(),
          )
        ],
      ),
    );
  }
}
