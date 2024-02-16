import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, crossAxisSpacing: 2),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration:
                            BoxDecoration(color: ColorConstants.mainWhite),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '',
                        style: TextStyle(color: ColorConstants.mainWhite),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
