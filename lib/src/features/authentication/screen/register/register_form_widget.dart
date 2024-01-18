import "package:app/src/constants/colors.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:app/src/features/authentication/controllers/register_controller.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Formheight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
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
                hintText: "Username",
                hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Roboto',
                    ),
              ),
            ),
            const SizedBox(height: Formheight),
            TextFormField(
              controller: controller.email,
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
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Roboto',
                    ),
              ),
            ),
            const SizedBox(height: Formheight),
            TextFormField(
              controller: controller.phoneNo,
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
            const SizedBox(height: Formheight),
            TextFormField(
              controller: controller.password,
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
            const SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      RegisterController.instance.registerUser(
                          controller.email.text.trim(),
                          controller.password.text.trim());
                    }
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
                  child: Text(RegisterTitle.toUpperCase())),
            ),
          ],
        ),
      ),
    );
  }
}
