
import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Daily',
                  style: TextStyle(
                      fontSize: size.width / 10,
                      color: wColor,
                      fontWeight: FontWeight.bold)),
              Text(
                'Recommended',
                style: TextStyle(
                    color: greyColor, fontSize: size.width / 16),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search, color: wColor),
          )
        ],
      ),
    );
  }
}