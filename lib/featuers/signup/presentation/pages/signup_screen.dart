import 'package:e_commerce_c9_sunday/featuers/signup/presentation/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.screenState == ScreenState.failure) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text(state.failures?.message ?? ""),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("SignUp"),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                SignUpBloc.get(context).add(SignUpButtonClicked());
              },
            ),
            body: Container(
              child: Center(
                child: Text(state.entity?.user?.name ?? "Hllo"),
              ),
            ),
          );
        },
      ),
    );
  }
}
