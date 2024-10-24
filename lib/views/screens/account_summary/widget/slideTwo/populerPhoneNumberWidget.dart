import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localColors.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class PopularPhoneNumberWidget extends StatefulWidget {
  const PopularPhoneNumberWidget({super.key});

  @override
  State<PopularPhoneNumberWidget> createState() =>
      _PopularPhoneNumberWidgetState();
}

class _PopularPhoneNumberWidgetState extends State<PopularPhoneNumberWidget> {
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

    List<String> hashphonenumber = [
      '085573178371',
      '085573178371',
      '085573178371',
      '085573178371',
      '085573178371',
      '085573178371',
      '085573178371',
      '085573178371',
      '085573178371',
      '085573178371'
    ];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Phone Number',
            style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
              color: Colors.black,
            ),
          ),
          Text(
            'Top 10 Phone Number yang dicari',
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
            children: List.generate(hashphonenumber.length, (index) {
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
                        hashphonenumber[index],
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
