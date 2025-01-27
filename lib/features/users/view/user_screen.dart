import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_firebase/features/users/viewmodel/user_viewmodel.dart';

class UserScreen extends HookConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(userViewmodelProvider.notifier).listenToUsers();
      return null;
    }, []);

    ref.listen<UserViewModelState>(userViewmodelProvider, (previous, next) {
      if (next.isError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.errorMessage ?? 'An unknown error occurred'),
            backgroundColor: Colors.red,
          ),
        );
      }
    });

    final userState = ref.watch(userViewmodelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Name TextFormField
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black54,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onChanged:
                      ref.read(userViewmodelProvider.notifier).onNameChanged,
                ),
                const SizedBox(height: 16),
                // Email TextFormField
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black54,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onChanged:
                      ref.read(userViewmodelProvider.notifier).onEmailChanged,
                ),
                const SizedBox(height: 32),
                // Save Button
                ElevatedButton(
                  onPressed: ref.read(userViewmodelProvider.notifier).saveUser,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: userState.isLoading
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(),
                        )
                      : const Text(
                          'Save',
                          style: TextStyle(fontSize: 18),
                        ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Users List',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Spacer(),
                      Text(
                        userState.users.length.toString(),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: userState.users.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            userState.users[index].name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          subtitle: Text(
                            userState.users[index].email,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
