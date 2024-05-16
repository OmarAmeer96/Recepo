import 'package:flutter/material.dart';
import 'package:recepo/Core/di/dependency_injection.dart';
import 'package:recepo/Core/routing/app_router.dart';
import 'package:recepo/recepo.dart';

void main() {
  setupGetIt();
  runApp(
    Recepo(
      appRouter: AppRouter(),
    ),
  );
}
