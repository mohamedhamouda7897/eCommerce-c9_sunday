import 'package:e_commerce_c9_sunday/featuers/category_tap/domain/entities/ProductEntity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  ProductDataEntity productDataEntity;

  CategoryItem(this.productDataEntity, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 237.h,
      width: 191.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: ColorApp.primary.withOpacity(.3), width: 2.w),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                ),
                child: Image.network(
                  productDataEntity.imageCover ?? "",
                  height: 128.h,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      productDataEntity.title ?? "",
                      style: Styles.poppins14,
                    ),
                    Text(
                      productDataEntity.description ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.poppins14,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Text(
                          productDataEntity.price.toString(),
                          style: Styles.poppins14,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          productDataEntity.price.toString(),
                          style: Styles.poppins11,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Review (${productDataEntity.ratingsAverage ?? ""})",
                              style: Styles.poppins12,
                            ),
                            Icon(
                              Icons.star,
                              color: ColorApp.star,
                              size: 15.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Image.asset(ImageApp.favSel);
                        // ? Image.asset(ImageApp.favSel)
                        // : Image.asset(ImageApp.favUnSel);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: ColorApp.primary,
                  child: Center(
                    child: Center(
                      child: Image.asset(
                        ImageApp.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
