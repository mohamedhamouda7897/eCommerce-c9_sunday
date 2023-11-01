import 'package:e_commerce_c9_sunday/core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../domain/entities/ProductEntity.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  ProductDataEntity productDataEntity;

  ItemDetails(this.productDataEntity, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: ColorApp.primary,
          size: 24,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Product Details",
          style: Styles.poppins20.copyWith(
            color: ColorApp.primary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24,
              color: ColorApp.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_shopping_cart,
              size: 24,
              color: ColorApp.primary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(
                      color: ColorApp.primary.withOpacity(.3), width: 2.w),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image.network(
                    productDataEntity.images?.first ?? "",
                    height: 300.h,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    productDataEntity.title ?? "",
                    style: Styles.poppins18,
                  ),
                  const Spacer(),
                  Text(
                    productDataEntity.price.toString(),
                    style: Styles.poppins18,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
                    height: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(
                        width: 1.h,
                        color: ColorApp.primary.withOpacity(.3),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "1200 Sold",
                        style: Styles.poppins14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.h,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorApp.star,
                    size: 15.h,
                  ),
                  Text(
                    "4.8 (7,500)",
                    style: Styles.poppins14,
                  ),
                  SizedBox(width: 66.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 11.w, horizontal: 16.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: ColorApp.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              width: 22.r,
                              height: 22.r,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11.r),
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "1",
                            style: Styles.poppins18,
                          ),
                          InkWell(
                            child: Container(
                              width: 22.r,
                              height: 22.r,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11.r),
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Description",
                style: Styles.poppins18,
              ),
              SizedBox(
                height: 8.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  productDataEntity.description ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Styles.poppins14,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "total Price",
                        style: Styles.poppins18,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        "EGP 3,000",
                        style: Styles.poppins18,
                      ),
                      SizedBox(
                        width: 33.w,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              backgroundColor: ColorApp.primary,
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.h, horizontal: 32.w)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(Icons.add_shopping_cart),
                              SizedBox(
                                width: 26.w,
                              ),
                              Text(
                                "Add to Cart",
                                style: Styles.poppins20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
