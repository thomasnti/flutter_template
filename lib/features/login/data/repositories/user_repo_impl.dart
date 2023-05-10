import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/utilities/failures.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repo.dart';
import '../datasources/fake_api.dart';

@LazySingleton(as: UserRepo)
class UserRepoImpl implements UserRepo {
  final FakeApi fakeApi;

  UserRepoImpl({
    required this.fakeApi,
  });

  @override
  Future<Either<Failure, User>> loginUser(String email, String password) async {
    try {
      final user = await fakeApi.login();
      return Right(user);
      // return user;
    } on Exception {
      return Left(Failure('Login falied !!'));
    }
  }
}
