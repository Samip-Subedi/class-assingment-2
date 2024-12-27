import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/profile_cubit.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samip Class Assignment'),
        centerTitle: true,
      ),
      body: BlocBuilder<ProfileCubit, String>(
        builder: (context, profileName) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40), // Space between AppBar and picture

                // Profile Picture at the Top Middle
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blueGrey[100],
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey[700],
                  ),
                ),

                const SizedBox(height: 20), // Space below the picture

                // Profile Name
                Text(
                  profileName.isNotEmpty ? profileName : 'No Name Available',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 10),

                // Subtitle
                Text(
                  'Welcome to your profile!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),

                const Spacer(), // Pushes the button to the bottom

                // Edit Profile Button
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement edit functionality here
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 12.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                const SizedBox(height: 20), // Space at the bottom
              ],
            ),
          );
        },
      ),
    );
  }
}
