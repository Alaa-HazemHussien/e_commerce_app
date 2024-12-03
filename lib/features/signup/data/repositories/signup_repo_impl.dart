import 'package:e_commerce_app/features/signup/data/data_sources/remote/remote_ds.dart';
import 'package:e_commerce_app/features/signup/data/models/request_data.dart';
import 'package:e_commerce_app/features/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce_app/features/signup/domain/repositories/signup_repo.dart';

class SignUpRepoImpl implements SignupRepo {
  RemoteDataSource remoteDataSource;

  SignUpRepoImpl(this.remoteDataSource);

  @override
  Future<UserEntity> signup(RequestData requestData) => remoteDataSource.signUp( requestData);
}
