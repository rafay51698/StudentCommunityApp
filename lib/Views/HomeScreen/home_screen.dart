import 'package:chattinapp/Const/color_const.dart';
import 'package:chattinapp/Const/image_const.dart';
import 'package:chattinapp/Controllers/home_controller.dart';
import 'package:chattinapp/Controllers/profile_controller.dart';
import 'package:chattinapp/Services/firebase_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: onPrimary,
        toolbarHeight: 100.h,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(35.r),
          child: Image.asset(
            "assets/images/logo.png",
            height: 60.h,
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(
              Icons.person,
              size: 35.sp,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(320.w, 40.h),
          child: Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                height: 42.h,
                width: 290.w,
                child: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      hintStyle: Theme.of(context).textTheme.labelMedium,
                      hintText: "Search Property Here...",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      contentPadding: EdgeInsets.only(left: 10.w, top: 5.h),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      fillColor: white,
                      filled: true),
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              // GestureDetector(
              //   onTap: () {
              //   },
              //   child: Container(
              //       margin: EdgeInsets.only(bottom: 10.h),
              //       height: 42.h,
              //       width: 42.h,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10.r),
              //         color: primary,
              //       ),
              //       child: Image.network("assets/images/filter.png")),
              // ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15.h, left: 16.w),
              margin: EdgeInsets.only(top: 20.h, bottom: 20.h, right: 16.w),
              height: 115.h,
              width: 343.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 120.w,
                          child: Text(
                            "Get Your 10% Cashback",
                            // style: Theme.of(context)
                            //     .textTheme
                            //     .headline2!
                            //     .copyWith(color: white)
                          )),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "*Expired 25 June 2023",
                        // style: Theme.of(context)
                        //     .textTheme
                        //     .subtitle2!
                        //     .copyWith(fontSize: 14.sp),
                      ),
                    ],
                  ),
                  Image.network(
                    building,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommend For You",
                    // style: Theme.of(context).textTheme.headline2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "View All",
                      // style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 330.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(
                          right: 10.w, bottom: 10.h, left: 16.w),
                      height: 310.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            spreadRadius: 3,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.r),
                                topRight: Radius.circular(10.r),
                              ),
                              child: Image.network(
                                building,
                                height: 143.h,
                                // width: 250.w,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10.h,
                            right: 10.w,
                            child: Container(
                              alignment: Alignment.center,
                              height: 20.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: onPrimary.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Text(
                                "For Sale",
                                // style: Theme.of(context)
                                //     .textTheme
                                //     .subtitle2!
                                //     .copyWith(
                                //         color: black,
                                //         fontSize: 11.sp,
                                //         fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Banana Island, Lagos",
                                    // style:
                                    //     Theme.of(context).textTheme.headline2,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "From: \$ 999",
                                    // style:
                                    //     Theme.of(context).textTheme.headline3,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.bed,
                                        color: primary,
                                      ),
                                      Text(
                                        "4 Beds",
                                        // style: Theme.of(context)
                                        //     .textTheme
                                        //     .subtitle2,
                                      ),
                                      SizedBox(
                                        width: 50.w,
                                      ),
                                      const Icon(
                                        Icons.bathtub_outlined,
                                        color: primary,
                                      ),
                                      const Text("3 bath"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.compare_arrows_sharp,
                                        color: primary,
                                      ),
                                      Text(
                                        "1800 Sq ft",
                                        // style: Theme.of(context)
                                        //     .textTheme
                                        //     .subtitle2,
                                      ),
                                      SizedBox(
                                        width: 50.w,
                                      ),
                                      const Icon(
                                        Icons.favorite,
                                        color: primary,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      Image.network(
                                        building,
                                        height: 25.h,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        "Joshua Rozario",
                                        // style: Theme.of(context)
                                        //     .textTheme
                                        //     .headline2!
                                        //     .copyWith(fontSize: 12.sp),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Residences",
                    // style: Theme.of(context).textTheme.headline2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "View All",
                      // style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150.h,
              // width: 345.w,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      // Get.toNamed(AppRoutes.servicesDetail);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: 10.h, right: 10.w, top: 10.h, left: 16.w),
                      height: 120.h,
                      padding: EdgeInsets.all(15.h),
                      width: 343.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 6,
                            spreadRadius: 3,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.network(
                              building,
                              fit: BoxFit.cover,
                              height: 130.h,
                              width: 100.w,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Banana Island, Lagos',
                                // style: Theme.of(context).textTheme.headline2,
                              ),
                              Text(
                                'From: 999/=',
                                // style: Theme.of(context).textTheme.headline3!,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.bed,
                                    size: 15,
                                    color: primary,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '4 Beds',
                                    style:
                                        Theme.of(context).textTheme.subtitle2!,
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  const Icon(
                                    Icons.bathroom,
                                    size: 15,
                                    color: primary,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '3 Bath',
                                    style:
                                        Theme.of(context).textTheme.subtitle2!,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.tag_solid,
                                    size: 15,
                                    color: primary,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '1800 Sq ft',
                                    style:
                                        Theme.of(context).textTheme.subtitle2!,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 60.w),
                                    child: const Icon(
                                      Icons.favorite_rounded,
                                      color: primary,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
