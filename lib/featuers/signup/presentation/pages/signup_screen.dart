import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_images.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 97.w, right: 96.r, top: 85.h),
                child: Image.asset(LoginAndSignUpImages.RouteImage),
              ),
              SizedBox(
                height: 46.9.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LoginAndSignupStrings.Fullname,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        controller: Fullnamecontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return LoginAndSignupStrings.errorname;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: LoginAndSignupStrings.EnterFullname,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: AppColor.blackfont),
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
                    Text(LoginAndSignupStrings.Mobile,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            )),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        controller: Phonecontroller,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return LoginAndSignupStrings.errormobile;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: LoginAndSignupStrings.entermobile,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: AppColor.blackfont),
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
                    Text(LoginAndSignupStrings.Email,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            )),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        controller: Emailcontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return LoginAndSignupStrings.erroremail;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: LoginAndSignupStrings.enteryouremail,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: AppColor.blackfont),
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
                    Text(LoginAndSignupStrings.Password,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            )),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        controller: Passwordcontroller,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return LoginAndSignupStrings.errorloginpassword;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: LoginAndSignupStrings.enterpassword,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: AppColor.blackfont),
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
                                AssetImage(LoginAndSignUpImages.HideImage),
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
                                LoginAndSignupStrings.SignUp,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                    color: AppColor.BackGround,
                                        fontSize: 20.sp),
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
