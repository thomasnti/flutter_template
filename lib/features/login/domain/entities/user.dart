import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String email;

  const User(this.email);

  @override
  List<Object?> get props => [email];
}
