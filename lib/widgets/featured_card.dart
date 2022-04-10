import 'package:flutter/material.dart';
import 'package:realestateui/utils/theme.dart';

class FeaturedCard extends StatelessWidget {
  final String name;
  final int numberOfBeds;
  final int numberOfBaths;
  final double price;

  const FeaturedCard({
    Key? key,
    required this.name,
    required this.numberOfBeds,
    required this.numberOfBaths,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 340,
          width: 230,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                EstateTheme.primaryColor.withOpacity(0.8),
                EstateTheme.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          name,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            const ImageIcon(
              AssetImage("assets/bed.png"),
              size: 18,
            ),
            const SizedBox(width: 10),
            Text(
              "$numberOfBeds",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(width: 20),
            const ImageIcon(
              AssetImage("assets/bath-tub.png"),
              size: 18,
            ),
            const SizedBox(width: 10),
            Text(
              "$numberOfBaths",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          "\$ ${price.toStringAsFixed(0)} / mo",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: EstateTheme.secondaryColor,
              ),
        ),
      ],
    );
  }
}
