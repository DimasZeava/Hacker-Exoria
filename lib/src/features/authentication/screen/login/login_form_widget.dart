import "package:app/src/constants/colors.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:flutter/material.dart";


class LoginForm extends StatelessWidget{
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
                      prefixIcon: Icon(Icons.person_outline_outlined),
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
                    onPressed: () {}, 
                    child: Text(
                      ForgotPassword,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  ),
                  const SizedBox(
                    height: 100
                    ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                          ),
                        foregroundColor: WhiteColor,
                        backgroundColor: PrimaryColor,
                        side: BorderSide(color: SecondaryColor),
                        padding: EdgeInsets.symmetric(vertical : ButtonHeight),
                      ), 
                      child: Text(LoginTitle.toUpperCase())
                      ),),
              ],
            ),
            ),
            );
  }
}