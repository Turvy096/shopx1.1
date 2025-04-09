import 'package:flutter/material.dart';
import 'package:api/Resources/app_colors.dart';
import 'package:sign_button/sign_button.dart';

class GoogleButton extends StatelessWidget {
  final ButtonType btnType;
  GoogleButton({
    super.key,
    required this.btnType
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: AppColors.subTitleColor
        )
      ),
      child: SignInButton.mini(
        elevation: 0,
        btnColor: AppColors.primaryColor.withOpacity(0),
        buttonType: btnType,
          onPressed: (){
           
        }
      ),
    );
  }
}