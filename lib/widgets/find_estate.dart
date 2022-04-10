import 'package:flutter/material.dart';
import 'package:realestateui/utils/theme.dart';
import 'package:realestateui/widgets/search.dart';

class FindYourEstate extends StatelessWidget {
  const FindYourEstate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      snap: true,
      maxChildSize: 0.4,
      minChildSize: 0.2,
      initialChildSize: 0.2,
      builder: (context, controller) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Icon(
                  Icons.expand_less,
                  color: EstateTheme.black,
                  size: 28,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: EstateTheme.greyish,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const EstateSearch(),
                ),
                const SizedBox(height: 40),
                Text(
                  "Popular Searches",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: EstateTheme.black,
                      ),
                ),
                const Divider(
                  color: EstateTheme.grey,
                  indent: 60,
                  endIndent: 60,
                  height: 30,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: EstateTheme.grey,
                  ),
                  title: Text(
                    "Brown House",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: EstateTheme.grey,
                        ),
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
