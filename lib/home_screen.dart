import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_practice/data/providers/hello_world_provider.dart';
import 'package:riverpod_practice/data/providers/theme_provider.dart';

class HelloWorldScreen extends ConsumerWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(helloWorldProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(height: 20),
            Switch(
                value: ref.watch(appThemeProvider),
                onChanged: (value) =>
                    ref.read(appThemeProvider.notifier).state = value),
          ],
        ),
      ),
    );
  }
}
