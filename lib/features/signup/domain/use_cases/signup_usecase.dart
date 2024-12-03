import 'package:e_commerce_app/features/signup/data/models/request_data.dart';
import 'package:e_commerce_app/features/signup/domain/repositories/signup_repo.dart';
import '../entities/UserEntity.dart';

class SignUpUseCase{
 SignupRepo signupRepo;

 SignUpUseCase(this.signupRepo);

  Future<UserEntity> call(RequestData requestData)=>signupRepo.signup( requestData);
}