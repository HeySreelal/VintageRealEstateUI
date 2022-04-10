import 'package:flutter/material.dart';
import 'package:realestateui/widgets/featured_list.dart';
import 'package:realestateui/widgets/find_estate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Featured",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 18),
            const FeaturedList(),
          ],
        ),
      ),
      bottomSheet: const FindYourEstate(),
    );
  }
}
