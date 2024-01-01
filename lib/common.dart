import 'package:cryptographic/constants/dimensions.dart';
import 'package:cryptographic/constants/space.dart';
import 'package:cryptographic/constants/styles.dart';
import 'package:flutter/material.dart';

import 'constants/colors.dart';

customAppBar() {
  return AppBar(

    elevation: 5,
    leading: customCircleAvatar(20,"assets/images/img1.png",50),
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello Mahmud",
          style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 25)
        ),
        Text(
          "Welcome Back!",
          style: robotoBold.copyWith(color: AppColors.kGrey),
        )
      ],
    ),
    actions: [
      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
          ),
        ], borderRadius: BorderRadius.circular(25), color: AppColors.kWhite),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child: Row(
            children: [
              Icon(Icons.notification_add_outlined),
              sizeW10,
              Icon(Icons.menu),
              sizeW10,
            ],
          ),
        ),
      ),
    ],
  );
}

customCircleAvatar(double? radius,String name,double? imgWidth) {
  return CircleAvatar(
    radius: radius,
    child: ClipOval(
      child:   Image.asset( name,width: imgWidth,
          fit: BoxFit.fill)
    ),
  );

}

sendReceive() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            buttons(Icons.arrow_forward_rounded),        sizeH8,

            Text("Send",style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 18),),

          ],
        ),
        Column(
          children: [
            buttons(Icons.arrow_back),        sizeH8,

            Text("Recieve",style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 18),),

          ],
        ),
        Column(
          children: [
            buttons(Icons.swap_horiz),        sizeH8,

            Text("Swap",style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 18),),

          ],
        ),

      ],
    ),
  );
}

income(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Row(
              children: [
                buttons(Icons.arrow_forward_rounded),
                Text("Salary",style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 18),),
                Icon(Icons.more_horiz,color: AppColors.kOrange,)
              ],
            ),
                  sizeH8,

            Text(
              "\$15700.00",
              style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 25),
            ),

          ],
        ),
        Column(
          children: [
            Row(
              children: [
                buttons(Icons.arrow_forward_rounded),
                Text("Salary",style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 18),),
                Icon(Icons.more_horiz,color: AppColors.kOrange,)
              ],
            ),
            sizeH8,

            Text(
              "\$15700.00",
              style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 25),
            ),

          ],
        ),
        Column(
          children: [
            Row(
              children: [
                buttons(Icons.arrow_forward_rounded),
                Text("Salary",style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 18),),
                Icon(Icons.more_horiz,color: AppColors.kOrange,)
              ],
            ),
            sizeH8,

            Text(
              "\$15700.00",
              style: robotoBlack.copyWith(color: AppColors.kBlack,fontSize: 25),
            ),

          ],
        ),

      ],
    ),
  );
}

buttons(IconData? icon) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: AppColors.kOrange.withOpacity(0.3),
            borderRadius: BorderRadius.circular(Dimensions.RADIUS_SMALL)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon,color: AppColors.kOrange,),
        ),
      )
    ],
  );
}
