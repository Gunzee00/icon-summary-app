import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localColors.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class PopularEmailWidget extends StatefulWidget {
  const PopularEmailWidget({super.key});

  @override
  State<PopularEmailWidget> createState() => _PopularWordsWidgetState();
}

class _PopularWordsWidgetState extends State<PopularEmailWidget> {
  @override
  Widget build(BuildContext context) {
    // List sementara hingga data tabel asli telah ada
    List<String> hashnumber = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10'
    ];

    List<String> hashemail = [
      'untungnyaduniamasihberputar@gmail.com',
      'alek@gmail.com',
      'anda@gmail.com',
      'bupati@gmail.com',
      'joyful@gmail.com',
      'halo@gmail.com',
      'semb@gmail.com',
      'rani@gmail.com',
      'you@gmail.com',
      'alek@gmail.com'
    ];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Email',
            style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
              color: Colors.black,
            ),
          ),
          Text(
            'Top 10 Email yang dicari',
            style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Table(
            // Set the column widths
            columnWidths: const {
              0: FixedColumnWidth(50), // Narrower column for hashnumber
              1: FlexColumnWidth(), // Wider column for hashkeyword
            },
            children: List.generate(hashemail.length, (index) {
              return TableRow(
                decoration: BoxDecoration(
                  color: (index % 2 == 0)
                      ? LocalColorsStyle.lightGreenColor
                      : Colors.white,
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        hashnumber[index],
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        hashemail[index],
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
