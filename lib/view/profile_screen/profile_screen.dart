import 'package:flutter/material.dart';
import 'package:projuct002/utils/constnads/color_constands.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My profile",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: ColorConstands.mainBlack),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(
        children: [
          edit_profile_section(),
          SizedBox(height: 20),
          followers_section(),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: ColorConstands.mainBlack,
          ),
          Column(
            children: [
              TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  unselectedLabelColor: ColorConstands.primaryColor,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstands.primaryColor,
                  ),
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                        child: Text(
                      "Video",
                    )),
                    Tab(
                        child: Text(
                      "Video",
                    )),
                  ]),
            ],
          )
        ],
      ),
    );
  }

  Widget followers_section() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Recipe",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstands.greyShade2),
              ),
              Text(
                "3",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstands.mainBlack),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Videos",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstands.greyShade2),
              ),
              Text(
                "13",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstands.mainBlack),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Followers",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstands.greyShade2),
              ),
              Text(
                "14K",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstands.mainBlack),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Following",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstands.greyShade2),
              ),
              Text(
                "120",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstands.mainBlack),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget edit_profile_section() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 22,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: ColorConstands.primaryColor,
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstands.primaryColor)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "Edit profile",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorConstands.primaryColor),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text("Alessandra Blair",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: ColorConstands.mainBlack,
              )),
          SizedBox(
            height: 16,
          ),
          Text(
            "Hello world I’m Alessandra Blair, I’m \nfrom Italy 🇮🇹 I love cooking so much!",
            style: TextStyle(
                fontSize: 14,
                color: ColorConstands.greyShade1,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
