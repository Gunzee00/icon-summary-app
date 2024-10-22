import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localColors.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class PopularHastag extends StatefulWidget {
  const PopularHastag({super.key});

  @override
  State<PopularHastag> createState() => _PopularhastagewidgetState();
}

class _PopularhastagewidgetState extends State<PopularHastag> {
  @override
  Widget build(BuildContext context) {
    // List sementara hingga data tabel asli telah ada
    List<String> hashtags = [
      'Bakso', 'Sate', 'Nasi Goreng', 'Mie Ayam', 'Pempek', 
      'Siomay', 'Rendang', 'Gado-Gado', 'Soto', 'Es Teh'
    ];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Hastag',
              style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
                color: Colors.black,
              ),
          ),
          Text('Top 10 Hastag oleh profil yang dicari',
            style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10,),
          Table(
            children: List.generate(hashtags.length, (index) {
              return TableRow(
                decoration: BoxDecoration(
                  color: (index % 2 == 0) ?   LocalColorsStyle.lightGreenColor : Colors.white ,
                ),
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        hashtags[index],
                        style: TextStyle(
                          color: (index % 2 == 0) ? Colors.black : Colors.black,
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
