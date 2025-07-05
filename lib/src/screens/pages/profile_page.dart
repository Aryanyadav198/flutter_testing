import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: const Key('profileSafeArea'),
      child: Scaffold(
        key: const Key("profileScaffold"),
        appBar: AppBar(
          title: Text("Profile page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                // backgroundImage:
                //     AssetImage('assets/avatar.png'), // Placeholder image
              ),
              const SizedBox(height: 16),
              Text('RnPower', style: Theme.of(context).textTheme.headlineSmall),
              Text('Flutter Developer • UI/UX Enthusiast',
                  style: Theme.of(context).textTheme.bodyMedium),
              const Divider(height: 30),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('rnpower@example.com'),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('App Settings'),
                onTap: () {
                  // Optional settings screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
