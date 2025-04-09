import 'package:flutter/material.dart';
import 'package:api/Resources/app_colors.dart';
import 'package:api/Resources/app_text_style.dart';
import 'package:api/Resources/google_button.dart';
import 'package:api/Screens/register_screen.dart';
import 'package:api/Resources/controller_app.dart';
import 'package:api/Resources/text_input.dart';
import 'package:get/get.dart';
import 'package:sign_button/sign_button.dart';

class LoginScreen extends StatelessWidget {
  final PasswordController _passwordController = Get.put(PasswordController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.30, // specify height instead of Expanded
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    AppColors.gradinetStart,
                    AppColors.gradeintMid,
                    AppColors.gradientEnd,
                  ],
                  stops: [
                    0.0, 
                    0.3,
                    1.0
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  ListTile(
                    horizontalTitleGap: 1.0,
                    minLeadingWidth: 30, // tightens the leading space
                    leading: Image.asset(
                      "assets/shopX.png",
                      ),
                    title: Text(
                      "ShopX",
                       style: AppTextStyle.heading
                      ),
                    contentPadding: const EdgeInsets.only(left: 10.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Endless aisles, effortless shopping.",
                      style: AppTextStyle.heading,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ListTile(
              title: Text(
                "Unlock Your ShopX Experience",
                style: AppTextStyle.title,
              ),
              subtitle: Text(
                "Get ready to explore a world of amazing products.",
                style: AppTextStyle.subTitle,
              ),
            ),
            TextInput(
              name: 
              "Email",
              hint: 
              "johndoe@gmail.com",
              prefixIcon: Icons.email
            ),
              Obx(()=>
                TextInput(
                  name: 
                  "Password",
                  hint: 
                  "********",
                  prefixIcon: Icons.lock_outline_rounded,
                  obscure: true,
                  suffixIcon: _passwordController.isObscure.value ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppColors.gradeintMid,
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign In",
                       style: AppTextStyle.buttonText
                      ),
                      Icon(
                        Icons.login,
                        color: AppColors.backgroundColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: AppTextStyle.appText,
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () => Get.to(RegisterScreen()),
                  child: Text(
                    "Sign Up",
                    style: AppTextStyle.clickableWords,
                  ),
                ),
              ],
            ),
            Center(
              child: GestureDetector(
                    onTap: () => Get.to(RegisterScreen()),
                    child: Text(
                      "Forgot Password",
                      style: AppTextStyle.clickableWords,
                    ),
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   GoogleButton(btnType: 
                  ButtonType.facebook
                ),
                GoogleButton(btnType:
                  ButtonType.twitterX
                ),
                GoogleButton(btnType: 
                ButtonType.google
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}