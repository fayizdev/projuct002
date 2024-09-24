import 'package:flutter/material.dart';

import '../../../utils/constnads/color_constands.dart';

class PopularCategoryCard extends StatelessWidget {
  const PopularCategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 231,
      width: 150,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            top: 55,
            child: Container(
              height: 176,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorConstands.greyShade3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Pepper sweetcorn ramen",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorConstands.mainBlack,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Time",
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorConstands.greyShade1,
                              ),
                            ),
                            Text(
                              "20 mins",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorConstands.mainBlack,
                              ),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: ColorConstands.mainWhite,
                          child: Icon(
                            Icons.bookmark_border,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: CircleAvatar(
                radius: 55,
                backgroundColor: ColorConstands.primaryColor,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/698549/pexels-photo-698549.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ))
        ],
      ),
    );
  }
}
