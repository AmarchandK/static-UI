import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    required this.size,
    required this.imge,
  }) : super(key: key);

  final Size size;
  final String imge;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height - 300,
      width: size.width - 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
                color: wColor, borderRadius: BorderRadius.circular(10)),
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
                child: Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      '4.9',
                      style: TextStyle(color: bColor),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
