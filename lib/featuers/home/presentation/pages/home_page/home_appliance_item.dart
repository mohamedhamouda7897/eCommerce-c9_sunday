import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeApplianceItems extends StatelessWidget {
  const HomeApplianceItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/213162/pexels-photo-213162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                fit: BoxFit.fill)),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: InkWell(
              child: ImageIcon(
            AssetImage(AppImages.faveBlue),
            color: AppColors.mainColor,
          )),
        ),
      ),
    ]);
  }
}
