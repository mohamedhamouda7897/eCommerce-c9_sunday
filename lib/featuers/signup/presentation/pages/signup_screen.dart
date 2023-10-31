import 'package:e_commerce_c9_sunday/featuers/signup/presentation/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  // const SignupScreen({super.key});
  static var signkey = GlobalKey<FormState>();
  var Fullnamecontroller = TextEditingController();
  var Emailcontroller = TextEditingController();
  var Phonecontroller = TextEditingController();
  var Passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signkey,
      child: Scaffold(
        backgroundColor: Color(0xff004182),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 97.w, right: 96.r, top: 85.h),
                child: Image.asset('assets/images/route.png'),
              ),
              SizedBox(
                height: 46.9.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Colors.white)),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        controller: Fullnamecontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter your full name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: "enter your full name",
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
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedErrorBorder: OutlineInputBorder(
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
                    Text('Mobile Number',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Colors.white)),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        controller: Phonecontroller,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter your phone no.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: "enter your mobile no.",
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
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedErrorBorder: OutlineInputBorder(
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
                    Text('E-mail address',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Colors.white)),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        controller: Emailcontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter your email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: "enter your email address",
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
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedErrorBorder: OutlineInputBorder(
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
                    TextFormField(
                        controller: Passwordcontroller,
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
                      height: 56.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              // Write The Function Here
                              if (signkey.currentState!.validate()) {
                                return null;
                              }
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 23.h, top: 23.h),
                              child: Text(
                                "Sign up",
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
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 89.h,
              )
            ],
          ),
        ),
      ),
    );

    //   BlocProvider(
    //   create: (context) => SignUpBloc(),
    //   child: BlocConsumer<SignUpBloc, SignUpState>(
    //     listener: (context, state) {
    //       if (state.screenState == ScreenState.failure) {
    //         showDialog(
    //           context: context,
    //           builder: (context) => AlertDialog(
    //             title: Text("Error"),
    //             content: Text(state.failures?.message ?? ""),
    //           ),
    //         );
    //       }
    //     },
    //     builder: (context, state) {
    //       return Scaffold(
    //         appBar: AppBar(
    //           title: Text("SignUp"),
    //         ),
    //         floatingActionButton: FloatingActionButton(
    //           onPressed: () {
    //             SignUpBloc.get(context).add(SignUpButtonClicked());
    //           },
    //         ),
    //         body: Container(
    //           child: Center(
    //             child: Text(state.entity?.user?.name ?? "Hllo"),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
