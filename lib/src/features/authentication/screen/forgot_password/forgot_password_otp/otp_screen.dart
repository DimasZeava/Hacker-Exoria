import "package:app/src/constants/colors.dart";
import "package:app/src/constants/images_string.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:flutter_otp_text_field/flutter_otp_text_field.dart";

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(DefaultSize),
          child: Column(
            children: [
            Image(image: AssetImage(OTPimage), height: size.height * 0.3),
              SizedBox(height: 30.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              OTPTitle,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
              "$OTPSubtitle support@exoria.com",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(height: 20.0),
              OtpTextField(
                numberOfFields: 6,
                focusedBorderColor: PrimaryColor,
                onSubmit: (code){
                  print("OTP is => $code");
                },
                textStyle: TextStyle(
                  color: PrimaryColor,
                  decorationColor: PrimaryColor,
                ),
              ),
              const SizedBox(height: 40.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, 
                child: Text("Submit"),
                style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      foregroundColor: WhiteColor,
                      backgroundColor: PrimaryColor,
                      side: BorderSide(color: SecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: ButtonHeight),
                    ),))
              ],)
            ],
          ),
        ),
      )
    );
  }
}