import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localColors.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class AccountActivities extends StatelessWidget {
  const AccountActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: LocalColorsStyle.primaryColor,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Memusatkan child secara vertikal
              crossAxisAlignment: CrossAxisAlignment.center, // Memusatkan child secara horizontal
              children: [
                Text(
                  "1010",
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Total Post",
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          width: 100.0,
          height: 100.0,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: LocalColorsStyle.primaryColor,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Memusatkan child secara vertikal
              crossAxisAlignment: CrossAxisAlignment.center, // Memusatkan child secara horizontal
              children: [
                Text(
                  "1010",
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Total Post",
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          width: 100.0,
          height: 100.0,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: LocalColorsStyle.primaryColor,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Memusatkan child secara vertikal
              crossAxisAlignment: CrossAxisAlignment.center, // Memusatkan child secara horizontal
              children: [
                Text(
                  "1010",
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Total Post",
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
          ),
        ),
      ],
    );
  }
}