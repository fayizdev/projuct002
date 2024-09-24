import 'package:flutter/material.dart';
import 'package:projuct002/utils/constnads/color_constands.dart';

import '../global_widgets/custom_list_tile.dart';
import '../global_widgets/customk_button.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTitleSection(),
              SizedBox(
                height: 24,
              ),
              _buildIncredientsSection()
            ],
          ),
        ),
      ),
    );
  }

  Column _buildIncredientsSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ingredients",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstands.mainBlack),
            ),
            Text(
              "5 items",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ColorConstands.greyShade2),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => CustomListTile(),
            separatorBuilder: (context, index) => SizedBox(
                  height: 12,
                ),
            itemCount: 10)
      ],
    );
  }

  Column _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "How to make french toast",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorConstands.mainBlack),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //image: DecorationImage(image: NetworkImage(url))
              color: Colors.yellow),
          child: Center(
              child: CircleAvatar(
            radius: 24,
            backgroundColor: ColorConstands.blackShade.withOpacity(.3),
            child: Icon(
              Icons.play_arrow,
              color: ColorConstands.mainWhite,
            ),
          )),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: ColorConstands.goldenYellow,
              size: 12,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "rating",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorConstands.mainBlack),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "(300 ratings)",
              style: TextStyle(
                fontSize: 14,
                color: ColorConstands.greyShade2,
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Roberta Anny",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConstands.mainBlack),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: ColorConstands.primaryColor,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Bali, Indonesia",
                      style: TextStyle(
                          fontSize: 14, color: ColorConstands.greyShade2),
                    )
                  ],
                )
              ],
            ),
            Spacer(),
            CustomButton(
              text: 'Follow',
            )
          ],
        )
      ],
    );
  }
}
