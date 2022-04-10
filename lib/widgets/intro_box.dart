import 'package:flutter/material.dart';
import 'package:realestateui/utils/theme.dart';

class IntroBox extends StatelessWidget {
  const IntroBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 2,
          height: 160,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          margin: const EdgeInsets.only(right: 10),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 16,
                    ),
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Image.asset(
                  "assets/Circles.png",
                  width: 120,
                ),
                const SizedBox(width: 18),
                const Text(
                  "500+ more",
                  style: TextStyle(
                    color: EstateTheme.grey,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
