class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() => message;
}
/*
// Example usage
Either<Failure, int> divide(int a, int b) {
  if (b == 0) {
    return Left(Failure("Cannot divide by zero"));
  } else {
    return Right(a ~/ b);
  }
}

void main() {
  final result1 = divide(10, 5); // Right(2)
  final result2 = divide(10, 0); // Left(Failure("Cannot divide by zero"))

  // Handle the result
  result1.fold(
    (failure) => print("Error: ${failure.message}"),
    (value) => print("Result: $value"),
  );
}
*/
