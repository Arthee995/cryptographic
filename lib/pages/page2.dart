import 'package:cryptographic/common.dart';
import 'package:cryptographic/constants/colors.dart';
import 'package:cryptographic/constants/dimensions.dart';
import 'package:cryptographic/constants/space.dart';
import 'package:cryptographic/constants/styles.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = ["assets/images/img1.png","assets/images/img2.png","assets/images/img3.jpg","assets/images/img5.png","assets/images/img4.png"];
    List<String> title = ["Amazon Prime","Spotify","Wynk","You tube","Whatsapp"];

    List<String> name = ["Housing","Food","Saving"];
    List<String> subname = ["\$3500.00","\$1700.00","\$700.00"];
    List<String> rate = ["40","74","10"];
    List<Color> color = [AppColors.kOrange,AppColors.kPurple,AppColors.kGrey];
    List<String> incomeName = ["Salary","Invest"];
    List<String> income = ["\$3500.00","\$1700.00"];

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
                    color: AppColors.kWhite.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE)),
                child: Padding(
                  padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Planned Expenses",
                            style: robotoBlack.copyWith(color: AppColors.kGrey,fontSize: 25),
                          ),
                          sizeH15,
                          Text(
                            "\$15700.00",
                            style: robotoRegular.copyWith(color: AppColors.kBlack,fontSize: 35),
                          ),
                          sizeH20,
                          Text(
                              "\$50 Left to budget",
                              style: robotoBlack.copyWith(color: AppColors.kGrey,fontSize: 22)
                          ),
                        ],
                      ),
                      Image.asset( "assets/images/img6.jpg",width: 190,height: 190,
                          fit: BoxFit.fill)
                    ],
                  ),
                ),
              ),
              Container(
                height: 130,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(padding: EdgeInsets.all(5),child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                        width: 140,
                        child: Card(
                          color: color[index],

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name[index],
                                  style: robotoBold.copyWith(color: AppColors.kWhite,fontSize: 20),
                                ),
                                sizeH8,
                                Text(
                                  subname[index],
                                  style: robotoBold.copyWith(color: AppColors.kWhite,fontSize: 20),
                                ),
                                sizeH8,
                                Container(
                                  decoration: BoxDecoration(
                                    color: color[index].withOpacity(0.1)
                                  ),
                                  child: Text(
                                   rate[index]+ "%",
                                    style: robotoBold.copyWith(color: AppColors.kWhite,fontSize: 15),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),);
                    }),
              ),
              sizeH15,
              Text(
                  "My Income",
                  style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 22)
              ),
              Container(
                height: 130,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(padding: EdgeInsets.all(10),child: Container(
                        width: 190,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      buttons(Icons.donut_large),
                                      sizeW5,
                                      Text(incomeName[index],style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 18),),
                                     sizeW10,
                                      Icon(Icons.more_horiz,color: AppColors.kOrange,)
                                    ],
                                  ),
                                ),
                                sizeH8,

                                Text(
                                  income[index],
                                  style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 23),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),);
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
