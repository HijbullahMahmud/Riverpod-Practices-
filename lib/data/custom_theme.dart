import 'package:flutter/material.dart';

ThemeData appThemeData(BuildContext context, bool isDark) {
  return ThemeData(
      scaffoldBackgroundColor: isDark ? Colors.black : Colors.white,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: isDark ? Colors.white : Colors.black),
          backgroundColor: isDark ? Colors.black : Colors.white),
      textTheme: Theme.of(context)
          .textTheme
          .copyWith(
            titleSmall:
                Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 12),
            titleMedium:
                Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 14),
          )
          .apply(
              bodyColor: isDark ? Colors.white : Colors.black,
              displayColor: Colors.grey));
}
