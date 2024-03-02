import 'package:flutter/material.dart';
import 'package:social_media_app/components/textfield.dart';

import '../components/my_button.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height:10),
              const Text("M I N I M A L"),
              const SizedBox(height:20),

              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailController
              ),

              const SizedBox(height:25),

              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController
              ),

              const SizedBox(height:10),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: const Text("Forgot password?")
                  )
                ]
              ),

              const SizedBox(height:10),
              MyButton(
                onTap: (){},
                text: "L O G I N"
              ),
              const SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  GestureDetector(
                    onTap: (){},
                    child: const Text(
                      " Register here",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    )
                  )
                ]
              )

            ]
          ),
        )
      )
    );
  }
}