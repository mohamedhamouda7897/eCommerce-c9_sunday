import 'package:e_commerce_c9_sunday/core/api/api_manager.dart';
import 'package:e_commerce_c9_sunday/core/error/failures.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/data/data_sources/remote/sign_up_remote_ds.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/data/data_sources/remote/sign_up_remote_ds_impl.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/data/models/request_model.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/data/repositories/signup_repo_impl.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/repositories/signup_repo.dart';
import 'package:e_commerce_c9_sunday/featuers/signup/domain/use_cases/signup_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  static SignUpBloc get(context) => BlocProvider.of(context);

  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is SignUpButtonClicked) {
        emit(state.copWith(screenState: ScreenState.loading));
        ApiManager apiManager = ApiManager();
        SignUpRemoteDS remoteDS = SignUpRemoteDSImpl(apiManager);
        SignUpRepo signUpRepo = SignupRepoImpl(remoteDS);
        SignUpUseCase signUpUseCase = SignUpUseCase(signUpRepo);

        RequestModel requestModel = RequestModel(
            name: "hamoud",
            email: "hamoud55@gmail.com",
            password: "hamoud@123",
            phone: "01111111111");

        var result = await signUpUseCase.call(requestModel);
        result?.fold((l) {
          print(l.message.toString());
          emit(state.copWith(screenState: ScreenState.failure, failures: l));
        }, (r) {
          print(r.token);
          emit(state.copWith(screenState: ScreenState.success, userEntity: r));
        });
      }
    });
  }
}
