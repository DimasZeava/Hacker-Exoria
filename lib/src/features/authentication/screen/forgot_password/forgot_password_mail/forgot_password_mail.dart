import "package:app/src/constants/colors.dart";
import "package:app/src/constants/images_string.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:app/src/features/authentication/screen/forgot_password/forgot_password_otp/otp_screen.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(DefaultSize),
          child: Column(
            children: [
            Image(image: AssetImage(ForgotPasswordImage), height: size.height * 0.3),
              SizedBox(height: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
            Text(
              "Forgot Password",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                ),
              ),
            const SizedBox(height: Formheight - 10),
            Text(
            ForgotEmailSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                ),
              ),
              ]
            ),
            SizedBox(height: Formheight),
            Form(
              child: Column(
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
                  prefixIcon: Icon(Icons.mail),
                  hintText: "Email",
                  hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Roboto',
                      ),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(() => const OTPScreen());
                  }, child: const Text("Send"),
                style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      foregroundColor: WhiteColor,
                      backgroundColor: PrimaryColor,
                      side: BorderSide(color: SecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: ButtonHeight),
                    ),)),
            ],
            ),
          )
          ],
            ),
        ),
      ),
    );
  }
}