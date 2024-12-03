class UserEntity {
  UserEntity({
    this.user,
    this.token,
  });

  UserDataEntitiy? user;
  String? token;
}

class UserDataEntitiy {
  UserDataEntitiy({
    this.name,
    this.email,
  });
  String?name;
  String?email;
}
