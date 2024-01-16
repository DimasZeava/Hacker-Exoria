import 'package:app/src/constants/colors.dart';
import 'package:app/src/constants/images_string.dart';
import 'package:app/src/constants/sizes.dart';
import 'package:app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';


class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 140.0,
              child: Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
            ),
            const Text("Atau"),
            const SizedBox(
              width: 140.0,
              child: Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: Formheight,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: PrimaryColor, width: 1.0),
              foregroundColor: PrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            icon: Image(image: AssetImage(GoogleLogo), width: 20.0),
            onPressed: () {}, 
            label: Text("Masuk dengan Google"),
            ),
        ),
        const SizedBox(
          height : Formheight - 20
          ),
        TextButton(
          onPressed: () {}, 
          child: Text.rich(
            TextSpan(
              text: DoesntHaveAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const[
              TextSpan(
                text: " Register",
                style: TextStyle(color: Colors.blue),
                ),
              ]
              ),
            ),
          ),
      ],
    );
  }
}
