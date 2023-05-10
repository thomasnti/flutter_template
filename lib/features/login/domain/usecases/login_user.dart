import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/utilities/failures.dart';
import '../../../../common/utilities/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repo.dart';

@lazySingleton
class LoginUser extends Usecase {
  final UserRepo _userRepo;

  LoginUser(this._userRepo);

  @override
  // ignore: type_annotate_public_apis
  Future<Either<Failure, User>> call(params) async {
    return _userRepo.loginUser(
      params.email,
      params.password,
    );
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams(this.email, this.password);
}
