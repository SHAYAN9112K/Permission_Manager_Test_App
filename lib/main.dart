import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sample_app/core/config/app_theme.dart';
import 'package:sample_app/feature/injection_container.dart';
import 'package:sample_app/feature/permission/data/repository/permission_repository_impl.dart';
import 'package:sample_app/feature/permission/presentation/bloc/permission_bloc.dart';
import 'package:sample_app/feature/permission/presentation/pages/permission_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(
    BlocProvider(
      create: (context) => sl<PermissionBloc>(),
      lazy: false,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      home: PermissionPage(),
    );
  }
}
