import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/api/api_manager.dart';
import 'package:e_commerce_app/core/api/endpoint.dart';
import 'package:e_commerce_app/features/signup/data/data_sources/remote/remote_ds.dart';
import 'package:e_commerce_app/features/signup/data/models/UserModel.dart';

import '../../models/request_data.dart';

class RemoteDataSourceImpl implements RemoteDataSource{
  ApiManager apiManager;

  RemoteDataSourceImpl(this.apiManager);

  @override
  Future<UserModel> signUp(RequestData requestData)async {
    try{
      Response response=await
ApiManager.postData(endPoint: EndPoints.SignUp,body:
  requestData.toJson());
     
  UserModel userModel=UserModel.fromJson(response.data);
  print(userModel.token??"Token Error");
  return userModel;
    }catch(e){
      throw Exception();
    }
    }

}