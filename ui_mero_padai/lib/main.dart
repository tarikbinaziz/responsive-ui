import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => MaterialApp(
              home: myApp(),
            ),
        designSize: Size(375, 812));
  }
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 80.h),
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/bubble.png",
                height: 210.h,
                width: double.infinity,
                alignment: Alignment.topLeft,
                // width: 214.w,
              ),
              SizedBox(
                height: 30.h,
              ),

              // Image(
              //   image: AssetImage("assets/bubble.png"),
              //   height: 144,
              // )
              Text(
                'Welcome onboard',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                'Lets help you to meet your task',
                style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              ),
              SizedBox(
                height: 56.h,
              ),
              Image.asset(
                "assets/mobile.png",
                height: 186.h,
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your name',
                      // hintStyle: TextStyle(fontSize: 11.sp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0)),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your Full name',
                      // hintStyle: TextStyle(fontSize: 11.sp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.r),
                          borderSide: BorderSide.none
                          //   BorderSide(color: Colors.transparent, width: 0)
                          ),
                      // enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(25.r),
                      //     borderSide:
                      //         BorderSide(color: Colors.transparent, width: 0)),

                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h)),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'sign up',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      minimumSize: MaterialStateProperty.all(
                          Size(double.infinity, 80.h))),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              RichText(
                text: TextSpan(
                    text: "Dont have account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                          text: "sign up",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold))
                    ]),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
