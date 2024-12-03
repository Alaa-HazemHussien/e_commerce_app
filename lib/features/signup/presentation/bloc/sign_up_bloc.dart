import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/api/api_manager.dart';
import 'package:e_commerce_app/features/signup/data/data_sources/remote/remote_ds.dart';
import 'package:e_commerce_app/features/signup/data/data_sources/remote/remote_ds_impl.dart';
import 'package:e_commerce_app/features/signup/data/models/request_data.dart';
import 'package:e_commerce_app/features/signup/data/repositories/signup_repo_impl.dart';
import 'package:e_commerce_app/features/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_app/features/signup/domain/repositories/signup_repo.dart';
import 'package:e_commerce_app/features/signup/domain/use_cases/signup_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
 static SignUpBloc get(context)=>BlocProvider.of(context);
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is RegisterEvent) {
        emit(state.copyWith(screenStatus: ScreenStatus.loading));
        ApiManager apiManager = ApiManager();
        RemoteDataSource remoteDataSource = RemoteDataSourceImpl(apiManager);
        SignupRepo signupRepo = SignUpRepoImpl(remoteDataSource);
        SignUpUseCase signUpUseCase = SignUpUseCase(signupRepo);
        RequestData requestData = RequestData(
            name: "alaa",
            email: "alaa2462001@gmail.com",
            password: "123@alaa",
            repassword: "123@alaa",
            phone: "0123456789");
        try {
          UserEntity userEntity = await signUpUseCase.call(requestData);
          emit(state.copyWith(
              screenStatus: ScreenStatus.successfully, userEntity: userEntity));
        }catch(e){
          emit(state.copyWith(
            screenStatus: ScreenStatus.failures
          ));
        }}
    });
  }
}
