import 'package:aimplatfarm_ui/core/constants.dart';
import 'package:aimplatfarm_ui/view/home/homepage.dart';
import 'package:flutter/material.dart';
class Contents extends StatelessWidget {
  const Contents({
    Key? key,
    required this.size,
    required this.imges,
  }) : super(key: key);

  final Size size;
  final List imges;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 2,
      width: double.infinity,
      color: greyColor,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h30,
            headingText(text: 'Bio'),
            contents(
                text:
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  here, content here making it look like readable English'),
            headingText(text: 'Feedback'),
            Center(
                child: contents(
                    text:
                        "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like")),
            headingText(text: 'Sample Work'),
            SizedBox(
              height: 500,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: imges.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            imge: imges[index],
                          ),
                        ),
                      ),
                      child: Container(
                        width: 100,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              imges[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}