import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({super.key});
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  static var logkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: logkey,
      child: Scaffold(
        backgroundColor: Color(0xff004182),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 97.w, right: 96.r, top: 91.h),
                child: Image.asset('assets/images/route.png'),
              ),
              SizedBox(
                height: 86.9.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back To Route",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text("Please sign in with your mail",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 16.sp,
                            color: Colors.white)),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text('User Name',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Colors.white)),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter your name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: "enter your name",
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 18.sp,
                              color: Color(0xff000000)),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.transparent,
                          errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        )),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text('Password',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Colors.white)),
                    SizedBox(
                      height: 24.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter your password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "enter your password",
                                hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.sp,
                                    color: Color(0xff000000)),
                                filled: true,
                                fillColor: Colors.white,
                                focusColor: Colors.transparent,
                                errorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      right: 16.w, top: 20.h, bottom: 20.h),
                                  child: ImageIcon(
                                    AssetImage("assets/images/Hide.png"),
                                    color: Colors.grey,
                                  ),
                                ))),
                        SizedBox(
                          height: 16.h,
                        ),
                        InkWell(
                            onTap: () {
                              // Write The Function Here
                            },
                            child: Text(
                              'Forgot Password',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 56.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.w, right: 15.w),
                child: ElevatedButton(
                    onPressed: () {
                      // Write The Function Here
                      if (logkey.currentState!.validate()) {
                        return null;
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 23.h, top: 23.h),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            color: Color(0xff004182)),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h),
                child: Center(
                    child: InkWell(
                        onTap: () {
                          // Write The Function Here
                        },
                        child: Text(
                          "Don't have an account? Create Account",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
