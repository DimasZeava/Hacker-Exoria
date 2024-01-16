import 'package:app/src/constants/images_string.dart';
import 'package:app/src/constants/sizes.dart';
import 'package:app/src/constants/text_strings.dart';
import 'package:app/src/features/authentication/screen/login/login_footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/src/features/authentication/screen/login/login_form_widget.dart';
import 'package:get/get.dart';

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
              Text(
                LoginTitle, 
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              const SizedBox(height: Formheight - 10),
              Text(
                LoginSubtitle, 
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              
              const LoginForm(),

              const LoginFooter()

            ]
          ),
        ),
        ),
        ),
    );
  }


}
