import 'package:flutter/material.dart';
import 'package:recepo/Core/di/dependency_injection.dart';
import 'package:recepo/Core/routing/app_router.dart';
import 'package:recepo/Core/shared_prefs/shared_prefs.dart';
import 'package:recepo/recepo.dart';

void main() async {
  // Make sure WidgetsBinding is initialized before Firebase (runApp won't do be triggered before them).
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Shared Preferences
  await initSharedPrefsAndGetData();

  // Initialize Dependency Injection
  setupGetIt();
  runApp(
    Recepo(
      appRouter: AppRouter(),
    ),
  );
}

Future<void> initSharedPrefsAndGetData() async {
  await SharedPrefs.cacheintialization();
}
