import 'package:flutter/material.dart';
import 'package:realestateui/screens/home.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
          child: Text(
            "Create an Account",
            style: Theme.of(context).textTheme.headline6,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Theme.of(context).colorScheme.secondary,
            ),
            shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
