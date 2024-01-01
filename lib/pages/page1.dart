import 'package:cryptographic/common.dart';
import 'package:cryptographic/constants/colors.dart';
import 'package:cryptographic/constants/dimensions.dart';
import 'package:cryptographic/constants/space.dart';
import 'package:cryptographic/constants/styles.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = ["assets/images/img1.png","assets/images/img2.png","assets/images/img3.jpg","assets/images/img5.png","assets/images/img4.png"];
    List<String> title = ["Amazon Prime","Spotify","Wynk","You tube","Whatsapp"];

    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.kOrange.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE)),
                child: Padding(
                  padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizeH70,
                      Text(
                        "\$15700.00",
                        style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 25),
                      ),
                      sizeH15,
                      Text(
                        "Hasan Mahmud",
                        style: robotoRegular.copyWith(color: AppColors.kGrey,fontSize: 18),
                      ),
                      sizeH5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "0316 1235 4523 7896",
                            style: robotoBlack.copyWith(color: AppColors.kGrey,fontSize: 25)
                          ),
                          Text(
                            "02/26",
                            style: robotoRegular.copyWith(color: AppColors.kGrey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              sizeH15,
              Card(
                color: AppColors.kWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: sendReceive(),
                  )),
              sizeH15,
              Text(
                "Reciepent",
                  style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 22)
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(padding: EdgeInsets.all(10),child: customCircleAvatar(30,
                          images[index],70),);
                    }),
              ),
              sizeH15,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Activity",
                        style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 22)
                    ),
                    Text(
                      "See All",
                        style: robotoBlack.copyWith(color: AppColors.kOrange,fontSize: 22)
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(padding: EdgeInsets.all(10),child: ListTile(
                        dense: true,


                        leading:  customCircleAvatar(30,
                            images[index],70),
                        title: Text(
                            title[index],
                            style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 19)
                        ),
                        subtitle: Text(
                          "25 sep 2023",
                          style: robotoBold.copyWith(color: AppColors.kGrey),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "\$500",
                                style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 17)
                            ),
                            Text(
                                "+0.31",
                                style: robotoBlack.copyWith(color: AppColors.kGrey)
                            ),
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
