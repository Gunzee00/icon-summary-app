import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class ProfileAccount extends StatelessWidget {
  const ProfileAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Profil Berisi gambar dan nama akun
              Container(
                width: 80.0,
                height: 80.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 30.0),
              Row(
                children: [
                  Text(
                    "John Doe",
                    style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "John Doe",
                    style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 40),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Biografi :",
                  style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "John Doe adalah IT Consultant",
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}