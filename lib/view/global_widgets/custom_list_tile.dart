import 'package:flutter/material.dart';

import '../../utils/constnads/color_constands.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, this.isarrow = false});
  final bool isarrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstands.greyShade3,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstands.mainWhite),
              child: Icon(Icons.coffee),
            ),
          ),
          Text(
            "Eggs",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstands.mainBlack),
          ),
          Spacer(),
          Text(
            "200g",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: ColorConstands.greyShade2),
          ),
          isarrow
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: ColorConstands.mainBlack,
                  ),
                )
              : SizedBox(
                  width: 16,
                )
        ],
      ),
    );
  }
}
