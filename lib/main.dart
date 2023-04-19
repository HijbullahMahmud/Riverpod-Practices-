import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_practice/data/custom_theme.dart';
import 'package:riverpod_practice/data/providers/theme_provider.dart';
import 'package:riverpod_practice/screens/user_list_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Riverpod Practice',
      theme: appThemeData(context, ref.watch(appThemeProvider)),
      home: const UserListScreen(),
    );
  }
}

