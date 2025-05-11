import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_final/application/providers/user_provider.dart';

class UserPage extends ConsumerWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    nameController.text = user.name;
    lastnameController.text = user.lastname;
    emailController.text = user.email;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          SizedBox(height: 10),
          TextField(
            controller: lastnameController,
            decoration: InputDecoration(labelText: 'Lastname'),
          ),
          SizedBox(height: 10),
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(userProvider.notifier)
                  .updateUser(
                    nameController.text,
                    lastnameController.text,
                    emailController.text,
                  );

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('User information updated!')),
              );
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }
}
