import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projuct002/utils/constnads/color_constands.dart';

class CustomVideoCard extends StatelessWidget {
  double width;
  String imageurl;
  String title;
  String duration;
  String rating;
  String profileimageurl;
  String username;

  CustomVideoCard({
    this.width = 280,
    required this.imageurl,
    required this.title,
    required this.duration,
    required this.rating,
    required this.profileimageurl,
    required this.username,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Container(
            height: 180,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage("$imageurl"), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstands.blackShade.withOpacity(.3)),
                        height: 28,
                        width: 58,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 7,
                                bottom: 8,
                              ),
                              child: Icon(Icons.star,
                                  color: Colors.white, size: 18),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 4, left: 4, bottom: 4, right: 8),
                              child: Text(
                                "$rating",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark_outline,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: ColorConstands.blackShade.withOpacity(.3),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 26,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstands.blackShade.withOpacity(.3),
                      ),
                      child: Center(
                        child: Text(
                          "$duration",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "$title",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage("$profileimageurl"),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "$username",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
