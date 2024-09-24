import 'package:flutter/material.dart';

import '../global_widgets/custom_video_card.dart';
import '../onboarding_screen/dummy_d.dart';

class BookMarksScreen extends StatelessWidget {
  const BookMarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) => CustomVideoCard(
                width: double.infinity,
                imageurl: DummyDb.trendingNowList[index]["imageurl"],
                title: DummyDb.trendingNowList[index]["title"],
                rating: DummyDb.trendingNowList[index]["rating"],
                profileimageurl: DummyDb.trendingNowList[index]
                    ["profileimageurl"],
                duration: DummyDb.trendingNowList[index]["duration"],
                username: DummyDb.trendingNowList[index]["username"],
              ),
          separatorBuilder: (context, index) => SizedBox(height: 20),
          itemCount: DummyDb.trendingNowList.length - 1),
    );
  }
}
