 import '../../data/models/request_data.dart';
import '../entities/UserEntity.dart';

abstract class SignupRepo{
   Future<UserEntity>signup(RequestData requestData);
}