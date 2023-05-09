import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'failures.dart';

abstract class Usecase<ReturnType, Params> {
  Future<Either<Failure, ReturnType>> call(Params params);
}

class ZeroMethodParams extends Equatable {
  @override
  List<Object?> get props => [];
}
