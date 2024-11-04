import 'package:icon_sumarry_app/styles/localMediaIcon.dart';

class SocialMediaList {
  final String socialMediaName;
  final String socialMediaImage;

  SocialMediaList ({
    required this.socialMediaName,
    required this.socialMediaImage,
  });

  static final listSocialMediaList = [
    SocialMediaList(
      socialMediaName: 'Facebook',
      socialMediaImage: facebookIcon,
    ),
    SocialMediaList(
      socialMediaName: 'Tiktok',
      socialMediaImage: tiktokIcon,
    ),
    SocialMediaList(
      socialMediaName: 'Instagram',
      socialMediaImage: instagramIcon,
    ),
    SocialMediaList(
      socialMediaName: 'Twitter',
      socialMediaImage: twitterIcon,
    ),
    SocialMediaList(
      socialMediaName: 'Youtube',
      socialMediaImage: youtubeIcon,
    ),
    SocialMediaList(
      socialMediaName: 'LinkedIn',
      socialMediaImage: linkedlnIcon,
    ),
  ];


}