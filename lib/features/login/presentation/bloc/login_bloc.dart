import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/utilities/usecase.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_user.dart';

part 'login_event.dart';
part 'login_state.dart';

// When a class is marked as injectable, it means that its dependencies can be automatically provided by the DI framework without explicitly creating instances or managing dependencies manually. This allows for better separation of concerns and promotes modular and testable code.
@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // The usecase (login the user)
  final LoginUser loginUser;

  LoginBloc(this.loginUser) : super(LoginInitial()) {
    _registerEvents();
  }

  void _registerEvents() {
    on<LogIn>(onLoginEvent);
  }

  Future<FutureOr<void>> onLoginEvent(
    LogIn event,
    Emitter<LoginState> emit,
  ) async {
    emit(Loading());

    final loginOrFailure =
        await loginUser(LoginParams(event.email, event.password));
    // final loginOrFailure = await loginUser.call(ZeroParamsMethod());

    loginOrFailure.fold(
      (l) => null,
      (r) => emit(LoggedIn(r)),
    );
  }
}
