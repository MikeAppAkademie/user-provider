import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_provider/logic/providers/user_provider.dart';

class UpdateUserScreen extends StatelessWidget {
  const UpdateUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        final nameController =
            TextEditingController(text: userProvider.user.name);
        final ageController =
            TextEditingController(text: userProvider.user.age.toString());

        return Scaffold(
          appBar: AppBar(title: const Text('Update User')),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: ageController,
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    final newName = nameController.text;
                    final newAge = int.tryParse(ageController.text) ??
                        userProvider.user.age;

                    userProvider.update(
                      newName: newName,
                      newAge: newAge,
                    );
                  },
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
