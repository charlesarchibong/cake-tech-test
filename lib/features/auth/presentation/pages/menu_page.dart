import 'package:cake_tech_test/features/auth/presentation/pages/authenticate_pin_page.dart';
import 'package:cake_tech_test/features/auth/presentation/pages/create_pin_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Menu',
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  CreatePinPage.push(context);
                },
                child: const Text('Create Pin'),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthenticatePinPage.push(context);
                },
                child: const Text('Authenticate Pin'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
