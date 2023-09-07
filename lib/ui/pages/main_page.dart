import 'package:firebase_auth_study/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => FirebaseLoginCubit()),
          BlocProvider(create: (context) => FirebaseDbCubit()),
        ],
        child: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<FirebaseLoginCubit, FirebaseLoginState>(
            builder: (context, state) => state.when(
              notAuthorized: () => const Center(child: Text("Not Authorized")),
              authorized: (user) => Center(child: Text(user.uid)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: context.read<FirebaseLoginCubit>().login,
                child: const Text("Login"),
              ),
              ElevatedButton(
                onPressed: context.read<FirebaseLoginCubit>().register,
                child: const Text("Register"),
              ),
              ElevatedButton(
                onPressed: context.read<FirebaseLoginCubit>().logout,
                child: const Text("Logout"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
