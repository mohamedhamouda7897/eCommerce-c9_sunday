import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_c9_sunday/config/routes/routes.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_images.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_strings.dart';
import 'package:e_commerce_c9_sunday/featuers/home/presentation/pages/home_page/home_appliance_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_items.dart';

class HomePage extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 30),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(AppImages.routeName)),
            SizedBox(
              height: 18.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 338.w,
                  height: 50.h,
                  child: TextField(
                    controller: searchController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: AppStrings.hintText,
                      hintStyle: const TextStyle(height: 1),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.mainColor,
                        size: 30,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                        const BorderSide(color: AppColors.mainColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          const BorderSide(color: AppColors.mainColor)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.cardScreen);
                    },
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: AppColors.mainColor,
                    )),
              ],
            ),
            CarouselSlider(
                items: [
                  Image.asset(
                    AppImages.adOne,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(AppImages.adTow),
                  Image.asset(AppImages.adThree),
                ],
                options: CarouselOptions(
                  animateToClosest: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(
                    seconds: 3,
                  ),
                  autoPlayAnimationDuration: const Duration(
                    seconds: 1,
                  ),

                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                  enlargeFactor: 4,
                  //enlargeStrategy: CenterPageEnlargeStrategy.scale,
                )),
            Row(
              children: [
                Text(AppStrings.categories, style: textStyle.bodyMedium),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(AppStrings.viewAll, style: textStyle.bodySmall))
              ],
            ),
            SizedBox(
              height: 320.h,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.2, crossAxisCount: 2),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CategoryItems(),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              AppStrings.homeAppliance,
              textAlign: TextAlign.start,
              style: textStyle.bodyMedium,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
              itemCount: 4,
              itemBuilder: (context, index) => HomeApplianceItems(),
            ),
          ],
        ),
      ),
    );
  }
}
