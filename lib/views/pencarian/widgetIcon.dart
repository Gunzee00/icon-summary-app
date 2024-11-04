import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/models/socialMediaList.dart';

class WidgetIcon extends StatefulWidget {
  const WidgetIcon({Key? key}) : super(key: key);

  @override
  _WidgetIconState createState() => _WidgetIconState();
}

class _WidgetIconState extends State<WidgetIcon> {
  String? _selectedPlatform;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Social Media')),
      body: ListView(
        children: SocialMediaList.listSocialMediaList.map((socialMedia) {
          return RadioListTile<String>(
            title: Text(socialMedia.socialMediaName),
            value: socialMedia.value,
            groupValue: _selectedPlatform,
            onChanged: (value) {
              setState(() {
                _selectedPlatform = value;
              });
            },
            secondary: Image.asset(
              socialMedia.socialMediaImage,
              width: 30,
              height: 30,
            ),
          );
        }).toList(),
      ),
    );
  }
}
