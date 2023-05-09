import 'package:dartz/dartz.dart';

import '../../../../common/utilities/failures.dart';
import '../../../../common/utilities/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repo.dart';

class LoginUser extends Usecase {
  final UserRepo _userRepo;

  LoginUser(this._userRepo);

  @override
  Future<Either<Failure, User>> call(params) async {
    return _userRepo.loginUser(
      params.email,
      params.password,
    );
  }
}
