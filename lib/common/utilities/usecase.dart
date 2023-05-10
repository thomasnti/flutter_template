import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'failures.dart';

abstract class Usecase<ReturnType, Params> {
// In Dart, the call method is a special method that allows an object to be invoked as if it were a function. It provides a way to make an object callable like a function, enabling instances of a class to be used as functions.
  Future<Either<Failure, ReturnType>> call(Params params);
}

class ZeroParamsMethod extends Equatable {
  @override
  List<Object?> get props => [];
}
