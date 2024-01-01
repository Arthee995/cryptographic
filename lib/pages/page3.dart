import 'package:cryptographic/common.dart';
import 'package:cryptographic/constants/colors.dart';
import 'package:cryptographic/constants/dimensions.dart';
import 'package:cryptographic/constants/space.dart';
import 'package:cryptographic/constants/styles.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/img1.png",
      "assets/images/img2.png",
      "assets/images/img3.jpg",
      "assets/images/img5.png",
      "assets/images/img4.png"
    ];
    List<String> title = ["Amazon Prime", "Spotify", "Wynk", "You tube", "Whatsapp"];

    List<String> incomeName = ["Income", "Expenses"];
    List<String> income = ["\$3500.00", "\$1700.00"];

    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.kGrey),
            ),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        centerTitle: true,
        title: Text("All Transactions", style: robotoBlack.copyWith(color: AppColors.kBlack, fontSize: 25)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.kGrey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications_none,
                  color: AppColors.kGrey,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.kWhite.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE)),
                child: Padding(
                  padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Planned Expenses",
                        style: robotoBlack.copyWith(color: AppColors.kGrey, fontSize: 25),
                      ),
                      sizeH15,
                      Text(
                        "\$15700.00",
                        style: robotoRegular.copyWith(color: AppColors.kBlack, fontSize: 35),
                      ),
                      sizeH20,
                    ],
                  ),
                ),
              ),
              sizeH15,
              Container(
                height: 120,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: 190,
                          child: Card(
                              child: ListTile(
                            leading: buttons(Icons.donut_large),
                            title: Text(
                              incomeName[index],
                              style: robotoBlack.copyWith(color: AppColors.kGrey, fontSize: 18),
                            ),
                            subtitle: Text(
                              income[index],
                              style: robotoBlack.copyWith(color: AppColors.kBlack, fontSize: 20),
                            ),
                          )),
                        ),
                      );
                    }),
              ),
              sizeH15,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent Activity", style: robotoBlack.copyWith(color: AppColors.kBlack, fontSize: 22)),
                    Text("View All", style: robotoBlack.copyWith(color: AppColors.kOrange, fontSize: 22)),
                  ],
                ),
              ),
              ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: ListTile(
                            dense: true,
                            leading: customCircleAvatar(30, images[index], 70),
                            title:
                                Text(title[index], style: robotoBlack.copyWith(color: AppColors.kBlack, fontSize: 19)),
                            subtitle: Text(
                              "25 sep 2023",
                              style: robotoBold.copyWith(color: AppColors.kGrey),
                            ),
                            trailing: Column(
                              children: [
                                Text("\$500", style: robotoBlack.copyWith(color: AppColors.kBlack, fontSize: 17)),
                                Text("+0.31", style: robotoBlack.copyWith(color: AppColors.kGrey)),
                              ],
                            ),
                          )),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
