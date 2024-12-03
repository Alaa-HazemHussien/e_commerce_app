class RequestData {
  String name;
  String email;
  String password;
  String repassword;
  String phone;

  RequestData(
      {required this.name,
      required this.email,
      required this.password,
      required this.repassword,
      required this.phone});
  Map<String,dynamic>toJson(){
    return{
      "name": name,
      "email":email,
      "password":password,
      "rePassword":repassword,
      "phone":phone
    };
  }
}
