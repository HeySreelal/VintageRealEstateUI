import 'package:flutter/material.dart';
import 'package:realestateui/utils/theme.dart';

class AlreadyIn extends StatelessWidget {
  const AlreadyIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Already have an account? ",
              style: TextStyle(
                color: EstateTheme.grey,
              ),
            ),
            TextSpan(
              text: "Sign in",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
