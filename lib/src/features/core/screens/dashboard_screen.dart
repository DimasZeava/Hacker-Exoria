import "package:app/src/common_widgets/card/card_widget.dart";
import "package:app/src/constants/colors.dart";
import "package:app/src/constants/images_string.dart";
import "package:app/src/constants/sizes.dart";
import "package:app/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(DashboardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  DashboardTitle,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                ),
                Text.rich(
                  TextSpan(
                      text: DashboardSubtitle,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontFamily: 'Inter',
                          ),
                      children: const [
                        TextSpan(
                          text: " Felix!",
                          style: TextStyle(
                              color: PrimaryColor, fontFamily: 'Inter'),
                        ),
                      ]),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Breakfast"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: PrimaryColor,
                        side: BorderSide(color: Colors.black, width: 1),
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Lunch"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: DarkColor,
                        side: BorderSide(color: Colors.black, width: 1),
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Dinner"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: DarkColor,
                        side: BorderSide(color: Colors.black, width: 1),
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Snacks"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: DarkColor,
                        side: BorderSide(color: Colors.black, width: 1),
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  "Recommendation",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    const CardItem(image: RendangImage, title: "Rendang"),
                    SizedBox(width: 10.0),
                    const CardItem(
                        image: NasiGorengImage, title: "Nasi Goreng"),
                    SizedBox(width: 10.0),
                    const CardItem(image: BaksoImage, title: "Bakso"),
                  ],
                ),
                SizedBox(height: 30.0),
                Text(
                  "Feeling Confused?",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'inter',
                      ),
                ),
                SizedBox(height: 10.0),
                Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Stack(
                        children: [
                          Ink.image(
                            image: AssetImage(ChatFeature),
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.dstATop,
                            ),
                            fit: BoxFit.fitWidth,
                            height: 100,
                            child: InkWell(
                              onTap: () {},
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Text(
                              "Ask Expert",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    fontFamily: 'inter',
                                  ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            left: 10,
                            child: Text(
                              "Consult your dietary issues with the expert",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontFamily: 'inter',
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}