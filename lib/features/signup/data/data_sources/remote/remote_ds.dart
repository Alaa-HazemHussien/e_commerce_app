import 'package:e_commerce_app/features/signup/data/models/UserModel.dart';
import 'package:e_commerce_app/features/signup/data/models/request_data.dart';

abstract class RemoteDataSource{
  Future<UserModel>signUp(RequestData requestData);
}