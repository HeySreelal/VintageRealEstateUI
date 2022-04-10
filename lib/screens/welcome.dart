import 'package:flutter/material.dart';
import 'package:realestateui/widgets/already_in.dart';
import 'package:realestateui/widgets/intro_box.dart';
import 'package:realestateui/widgets/sign_up_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Vintage\nReal Estate\nCommunity",
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 18),
            const IntroBox(),
            const SizedBox(height: 40),
            const SignUpButton(),
            const SizedBox(height: 20),
            const AlreadyIn(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
