import 'package:cake_tech_test/core/core.dart';
import 'package:cake_tech_test/features/auth/presentation/pages/menu_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cake Tech Test',
      home: MenuPage(),
    );
  }
}
