import 'package:flutter/material.dart';
import 'package:projuct002/utils/constnads/color_constands.dart';
import 'package:projuct002/view/home_screen/widgets/popularcategorycard.dart';
import 'package:projuct002/view/onboarding_screen/dummy_d.dart';

import '../global_widgets/custom_video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //title section
            _titleSectoin(),
            _trensdingNowSection(),
            _popularCaregory()
          ],
        ),
      ),
    );
  }

  Padding _popularCaregory() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Popular category",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          DefaultTabController(
            length: 6,
            child: TabBar(
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("salad"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("salad"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("salad"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("salad"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("salad"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("salad"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 231,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => PopularCategoryCard(),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: 10),
          )
        ],
      ),
    );
  }

  Column _trensdingNowSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            children: [
              Text(
                "Trending now 🔥",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Color(0xffE23E3E),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward,
                color: Color(0xffE23E3E),
              )
            ],
          ),
        ),
        SizedBox(
          height: 256,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomVideoCard(
                    imageurl: DummyDb.trendingNowList[index]["imageurl"],
                    title: DummyDb.trendingNowList[index]["title"],
                    rating: DummyDb.trendingNowList[index]["rating"],
                    profileimageurl: DummyDb.trendingNowList[index]
                        ["profileimageurl"],
                    duration: DummyDb.trendingNowList[index]["duration"],
                    username: DummyDb.trendingNowList[index]["username"],
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 20),
              itemCount: DummyDb.trendingNowList.length - 1),
        )
      ],
    );
  }

  Column _titleSectoin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes \nfor cooking",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 44,
              color: Colors.black,
            ),
            maxLines: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search recipes",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(width: 2, color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(width: 2, color: Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }
}
