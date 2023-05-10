part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LogIn extends LoginEvent {
  final String email;
  final String password;

  const LogIn({
    required this.email,
    required this.password,
  });
}
