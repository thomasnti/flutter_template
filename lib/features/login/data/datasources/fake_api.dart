// import 'package:http/http.dart' as http;

import 'package:injectable/injectable.dart';

import '../models/user_model.dart';

abstract class FakeApi {
  Future<UserModel> login();
}

@LazySingleton(as: FakeApi)
class FakeApiImpl implements FakeApi {
  // final http.Client client;

  @override
  Future<UserModel> login() async {
    await Future.delayed(const Duration(seconds: 2));
    // return UserModel.fromJson(json);
    return const UserModel('fake.api@gmail.com');
  }
}
