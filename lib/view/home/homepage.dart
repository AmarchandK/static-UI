import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:aimplatfarm_ui/view/home/widgets/bottomnav.dart';
import 'package:aimplatfarm_ui/view/home/widgets/cards.dart';
import 'package:aimplatfarm_ui/view/home/widgets/custum_appbar.dart';
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
              CustomAppBar(size: size),
              h20,
              CardView(size: size, imge: imge),
              h20,
              const Divider(
                  thickness: 6, color: wColor, indent: 160, endIndent: 160),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Bottom(),
    );
  }
}
