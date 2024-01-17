import "package:app/src/constants/colors.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:app/src/features/authentication/screen/forgot_password/forgot_password_mail/forgot_password_mail.dart";
import "package:app/src/features/authentication/screen/forgot_password/forgot_password_options/forgot_password_button_widget.dart";
import "package:app/src/features/authentication/screen/forgot_password/forgot_password_phone/forgot_password_phone.dart";
import "package:app/src/features/core/screens/dashboard_screen.dart";
import "package:app/src/features/core/screens/navigation_bar.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Formheight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                prefixIcon: Icon(Icons.person),
                hintText: "Email",
                hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Roboto',
                    ),
              ),
            ),
            const SizedBox(height: Formheight),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: PrimaryColor),
                ),
                prefixIcon: Icon(Icons.lock),
                hintText: "Password",
                hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Roboto',
                    ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.visibility),
                ),
              ),
            ),
            const SizedBox(height: Formheight - 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    builder: (context) => Container(
                      padding: EdgeInsets.all(DefaultSize),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            SelectionForgotTitle,
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Roboto',
                                    ),
                          ),
                          Text(
                            SelectionForgotSubtitle,
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontFamily: 'Roboto',
                                    ),
                          ),
                          const SizedBox(height: 30.0),
                          ForgotPasswordButtonWidget(
                            btnIcon: Icons.mail_outline_outlined,
                            title: "Email",
                            subtitle: SelectionForgotEmail,
                            onTap: () {
                              Navigator.pop(context);
                              Get.to(() => const ForgotPasswordMailScreen());
                            },
                          ),
                          const SizedBox(height: 20.0),
                          ForgotPasswordButtonWidget(
                            btnIcon: Icons.mobile_friendly_rounded,
                            title: "No Telepon",
                            subtitle: SelectionForgotPhone,
                            onTap: () {
                              Navigator.pop(context);
                              Get.to(() => const ForgotPasswordPhoneScreen());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  ForgotPassword,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 210),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const Navigation());
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    foregroundColor: WhiteColor,
                    backgroundColor: PrimaryColor,
                    side: BorderSide(color: SecondaryColor),
                    padding: EdgeInsets.symmetric(vertical: ButtonHeight),
                  ),
                  child: Text(LoginTitle.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}
