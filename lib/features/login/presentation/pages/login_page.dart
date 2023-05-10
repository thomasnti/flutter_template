import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependency_injection/dependency_injection.dart';
import '../bloc/login_bloc.dart';
import '../widgets/custom_form_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<LoginBloc> buildBody(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => getIt<LoginBloc>(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LoggedIn) {
              return Center(
                child: Text(state.user.email),
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomFormField(
                  textEditingController: emailController,
                  labelText: 'Email',
                  isPassword: false,
                ),
                const SizedBox(height: 8.0),
                CustomFormField(
                  textEditingController: passwordController,
                  labelText: 'Password',
                  isPassword: true,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform login action here using the email and password entered by the user
                    context.read<LoginBloc>().add(LogIn(
                          email: emailController.text,
                          password: passwordController.text,
                        ));
                  },
                  child: const Text('Login'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
