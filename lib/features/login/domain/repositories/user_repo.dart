import 'package:dartz/dartz.dart';

import '../../../../common/utilities/failures.dart';
import '../entities/user.dart';

abstract class UserRepo {
  Future<Either<Failure, User>> loginUser(String email, String password);
}
