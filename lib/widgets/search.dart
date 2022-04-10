import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestateui/utils/theme.dart';

class EstateSearch extends StatelessWidget {
  const EstateSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Find your estate...",
        hintStyle: const TextStyle(
          color: EstateTheme.white,
        ),
        suffixIcon: Container(
          child: const Icon(
            CupertinoIcons.search,
            color: EstateTheme.white,
          ),
          padding: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: EstateTheme.secondaryColor,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
