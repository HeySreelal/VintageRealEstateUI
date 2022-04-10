import 'package:flutter/material.dart';
import 'package:realestateui/widgets/featured_card.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FeaturedCard(
            name: "Brown House",
            price: 1500000,
            numberOfBaths: 3,
            numberOfBeds: 4,
          ),
          FeaturedCard(
            name: "Luxury Elixir",
            price: 24999,
            numberOfBaths: 4,
            numberOfBeds: 5,
          ),
          FeaturedCard(
            name: "Robin Hood",
            price: 30999,
            numberOfBaths: 3,
            numberOfBeds: 4,
          ),
        ],
      ),
    );
  }
}
