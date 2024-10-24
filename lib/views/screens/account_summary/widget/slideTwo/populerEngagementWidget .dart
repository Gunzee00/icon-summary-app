import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class PopularEngagementWidget extends StatefulWidget {
  const PopularEngagementWidget({super.key});

  @override
  State<PopularEngagementWidget> createState() =>
      _PopularEngagementWidgetState();
}

class _PopularEngagementWidgetState extends State<PopularEngagementWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Posts and Engagements',
                  style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Top 10 postingan dengan Engagements oleh profil yang dicari',
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
