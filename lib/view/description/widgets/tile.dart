
import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}