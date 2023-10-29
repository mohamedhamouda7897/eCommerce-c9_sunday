part of 'sign_up_bloc.dart';

enum ScreenState { init, loading, success, failure }

@immutable
class SignUpState {
  ScreenState? screenState;
  UserEntity? entity;
  Failures? failures;

  SignUpState({this.screenState, this.entity, this.failures});

  SignUpState copWith(
      {UserEntity? userEntity, ScreenState? screenState, Failures? failures}) {
    return SignUpState(
      screenState: screenState ?? this.screenState,
      entity: userEntity ?? this.entity,
      failures: failures ?? this.failures,
    );
  }
}

class SignUpInitial extends SignUpState {
  SignUpInitial() : super(screenState: ScreenState.init);
}
