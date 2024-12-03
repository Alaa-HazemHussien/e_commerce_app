part of 'sign_up_bloc.dart';

//ha7ot fi el states w a check bi
enum ScreenStatus { init, loading, successfully, failures }

class SignUpState {
  ScreenStatus? screenStatus;
  UserEntity? userEntity;

  SignUpState({this.screenStatus, this.userEntity});

  SignUpState copyWith({ScreenStatus? screenStatus, UserEntity? userEntity}) {
    return SignUpState(
        screenStatus: screenStatus ?? this.screenStatus,
        userEntity: userEntity ?? this.userEntity);
  }
}

final class SignUpInitial extends SignUpState {
  SignUpInitial() : super(screenStatus: ScreenStatus.init, userEntity: null);
}
