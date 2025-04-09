import 'package:flutter/material.dart';
import 'package:api/Resources/app_text_style.dart';
import 'package:api/Resources/controller_app.dart';
import 'package:get/get.dart';

class TextInput extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  final PasswordController controller = Get.put(PasswordController());
  String name;
  String hint;
  bool obscure;
  IconData ? prefixIcon;
  IconData ? suffixIcon;

  TextInput(
    {
    super.key,
    required this.name,
    required this.hint,
    this.obscure = false,
    this.prefixIcon,
    this.suffixIcon,
    }
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: AppTextStyle.input,
      ),
      subtitle: SizedBox(
          height: 40,
          child: TextFormField(
            // controller: textEditingController,
            obscureText: obscure ? controller.isObscure.value : false,
            decoration: InputDecoration(
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              hintText: hint,
              hintStyle: AppTextStyle.hintText,
              suffixIcon: GestureDetector(
                onTap: (){
                  controller.isObscure.value = !controller.isObscure.value;
                },
                child: Icon(suffixIcon)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
            )
          ),
        ),
      ),
    );
  }
}