import 'package:flutter/material.dart';
import 'package:social_media_app/components/textfield.dart';

import '../components/my_button.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
                hintText: "Username",
                obscureText: false,
                controller: usernameController,
              ),

              const SizedBox(height:25),
              MyTextField(
                hintText: "email",
                obscureText: false,
                controller: emailController
              ),
              const SizedBox(height:25),

              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController
              ),

              const SizedBox(height:25),
              MyTextField(
                hintText: "Confirm password",
                obscureText: true,
                controller: confirmPasswordController
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
                text: "R E G I S T E R"
              ),
              const SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      " Login here",
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