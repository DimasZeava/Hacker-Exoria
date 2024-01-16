import "package:app/src/common_widgets/forms/form_header_widgets.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:app/src/features/authentication/screen/register/register_footer_widget.dart";
import "package:app/src/features/authentication/screen/register/register_form_widget.dart";
import "package:flutter/material.dart";

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(DefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                title: RegisterTitle, 
                subtitle: RegisterSubtitle
                ),
              const RegisterForm(),
              const RegisterFooter(),
            ],
            ),
        ),
      ),
      ),
    );
  }
}