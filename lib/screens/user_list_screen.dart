import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/data/providers/user_list_provider.dart';
import '../data/services/api_service.dart';

class UserListScreen extends ConsumerWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(userListProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("User List"),
        ),
        body: _data.when(
            data: (_data) {
              return Column(
                children: [
                  ..._data.map((e) => ListView(
                        shrinkWrap: true,
                        children: [
                          InkWell(
                            //onTap: () => null,
                            child: ListTile(
                              title: Text(e.firstName),
                              subtitle: Text(e.lastName),
                              trailing: CircleAvatar(
                                backgroundImage: NetworkImage(e.avatar),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              );
            },
            error: (Object error, StackTrace stackTrace) =>
                Text(error.toString()),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
