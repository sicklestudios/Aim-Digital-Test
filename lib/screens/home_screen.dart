import 'package:aim_digital/cubit/login_cubit.dart';
import 'package:aim_digital/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<LoginCubit>().logout();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: const Center(
          child: Text(
        'Welcome!,\nThis is created by\n\nMuhammad Haris Amer',
        textAlign: TextAlign.center,
      )),
    );
  }
}
