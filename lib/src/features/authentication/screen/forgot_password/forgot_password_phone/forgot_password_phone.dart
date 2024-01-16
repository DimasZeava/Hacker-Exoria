import "package:app/src/constants/colors.dart";
import "package:app/src/constants/images_string.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class ForgotPasswordPhoneScreen extends StatelessWidget {
  const ForgotPasswordPhoneScreen({Key? key,}) : super(key: key);

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
            ForgotPhoneSubtitle,
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
                  prefixIcon: Icon(Icons.phone),
                  hintText: "No Telepon",
                  hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Roboto',
                      ),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text("Next"),
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