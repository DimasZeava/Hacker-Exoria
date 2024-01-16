import "package:app/src/common_widgets/fade_in_animation/animation_design.dart";
import "package:app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart";
import "package:app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart";
import "package:app/src/constants/colors.dart";
import "package:app/src/constants/images_string.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:app/src/features/authentication/screen/login/login_screen.dart";
import "package:flutter/material.dart";
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation( 
            durationInMS: 1200,
            animatePosition: AnimatePosition(
              bottomAfter: 0, 
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
              ),
          child: Container(
        padding: EdgeInsets.all(DefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(WelcomingLogin), height:height * 0.4 ),
            Column( 
              children: [
                Text(
                  WelcomeTitle, 
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  WelcomeSubtitle, 
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto',
                  ),
                textAlign: TextAlign.center,
                ),
            ]),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()), 
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
                    )
                  ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
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
                    child: Text("Register".toUpperCase())
                    )
                  ),
              ],
            ),
          ],
        ),
        ),
          ),
        ],
      ),
    );
  }
}