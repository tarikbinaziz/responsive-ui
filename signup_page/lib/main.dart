import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            //     borderSide: BorderSide(color: Colors.red, width: 3)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0)),
          filled: true,
          fillColor: Colors.white54,
          hintText: hint,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  "Sign up to Masterminds",
                  textScaleFactor: 2,
                  style: TextStyle(
                      //  fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Already have an acount? Login",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey),
                ),
                SizedBox(
                  height: 24.h,
                ),
                getTextField(hint: "First Name"),
                SizedBox(
                  height: 24.h,
                ),
                getTextField(hint: "Email"),
                SizedBox(
                  height: 24.h,
                ),
                getTextField(hint: "Password"),
                SizedBox(
                  height: 24.h,
                ),
                getTextField(hint: "Confirm Password"),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Create Account',
                      textScaleFactor: 1,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500))),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    SizedBox(
                      width: 24.h,
                    ),
                    Text(
                      "or sign up via",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black12),
                    ),
                    SizedBox(
                      width: 24.h,
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: null,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.g_mobiledata,
                        ),
                        Text(
                          'Google',
                          // textScaleFactor: 1,
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(color: Colors.black12)),
                        //   backgroundColor: MaterialStateProperty.all(Colors.purple),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500))),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "By signing up to Masterminds you again to our term and conditions",
                  style: TextStyle(fontSize: 12.sp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
