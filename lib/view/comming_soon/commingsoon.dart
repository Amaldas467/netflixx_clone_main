import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/utils/database.dart';

import 'package:netflix_dec/view/comming_soon/widgets/commingsoon_newcar.dart';
import 'package:netflix_dec/view/comming_soon/widgets/notification_custommoviecard.dart';

class ComingSoonSCreen extends StatelessWidget {
  const ComingSoonSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: Center(
          child: CircleAvatar(
            radius: 15,
            backgroundColor: ColorConstants.mainRed,
            child: Icon(
              Icons.notifications,
              color: ColorConstants.mainWhite,
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorConstants.mainWhite),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: ColorConstants.mainGrey,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DbData.moviesData.length,
                  itemBuilder: (context, index) => CustomNewArrivalCard(
                    newArrivals: DbData.moviesData,
                    indexvalue: index,
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                ),
              ),
              ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 20),
                itemCount: DbData.notificationMovieList.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    NotificationScreenCustomMovieCard(
                  imageUrl: DbData.notificationMovieList[index]['imageUrl'],
                  subTitle: DbData.notificationMovieList[index]['subtitle'],
                  title: DbData.notificationMovieList[index]['title'],
                  des: DbData.notificationMovieList[index]['description'],
                ),
                separatorBuilder: (context, index) => SizedBox(height: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
