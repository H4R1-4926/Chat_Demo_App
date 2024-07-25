import 'package:chat_app_demo/Application/DarkMode/dark_bloc.dart';
import 'package:chat_app_demo/Core/color.dart';

import 'package:chat_app_demo/Presentation/HomePage/homepage.dart';
import 'package:chat_app_demo/Presentation/Widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 101, 179),
        title: const Text(
          'SETTINGS',
          style: TextStyle(letterSpacing: 5),
        ),
        foregroundColor: kWhite,
        centerTitle: true,
      ),
      drawer: DrawerWidget(
        homeOnTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              (route) => false);
        },
        settingsOnTap: () => Navigator.pop(context),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            trailing: BlocBuilder<DarkBloc, DarkState>(
              builder: (context, state) {
                return Switch(
                    value: state.isTrue,
                    onChanged: (value) {
                      context.read<DarkBloc>().add(const DarkEvent.toggle());
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
