import 'package:app/src/common_widgets/forms/form_header_widgets.dart';
import 'package:app/src/constants/sizes.dart';
import 'package:app/src/constants/text_strings.dart';
import 'package:app/src/features/authentication/screen/login/login_footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/src/features/authentication/screen/login/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child :Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(DefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  FormHeaderWidget(title: LoginTitle, subtitle: LoginSubtitle),
                  const LoginForm(),
                  const LoginFooter(),
                ],
          ),
        ),
        ),
        ),
    );
  }


}


