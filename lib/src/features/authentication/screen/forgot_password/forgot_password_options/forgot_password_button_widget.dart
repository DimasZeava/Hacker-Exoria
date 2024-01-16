import "package:flutter/material.dart";


class ForgotPasswordButtonWidget extends StatelessWidget {
  const ForgotPasswordButtonWidget({
    super.key,
    required this.btnIcon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData btnIcon;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ),
        child: Row(children: [
          Icon(btnIcon, size: 60.0),
          SizedBox(width: 15.0),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontFamily: 'Roboto',
                  ),
            ),
          ]),
        ]),
      ),
    );
  }
}