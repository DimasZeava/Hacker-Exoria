import 'package:app/src/constants/sizes.dart';
import 'package:app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
      Text(
        title,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
      ),
      const SizedBox(height: Formheight - 10),
      Text(
        subtitle,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
      ),
    ]);
  }
}
