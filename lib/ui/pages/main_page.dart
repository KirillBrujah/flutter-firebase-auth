import 'package:firebase_auth_study/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FirebaseLoginCubit()),
      ],
      child: BlocProvider(
        create: (context) =>
            FirebaseDbCubit(loginCubit: context.read<FirebaseLoginCubit>()),
        child: const Scaffold(
          appBar: _AppBar(),
          body: _Body(),
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BlocSelector<FirebaseLoginCubit, FirebaseLoginState, String>(
        selector: (state) => state.when(
          notAuthorized: () => "Not authorized",
          authorized: (user) => user.uid,
        ),
        builder: (context, authState) => Text(authState),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<FirebaseDbCubit, FirebaseDbState>(
            builder: (context, state) => state.when(
              initial: () => const Text("DB IS INITIAL"),
              loaded: (data) => Text("Name = ${data["name"]}"),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: context.read<FirebaseDbCubit>().createUser,
                child: const Text("Create User"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
