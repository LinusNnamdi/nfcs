part of 'main.dart';

class _SocialButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},

          //? Telegram logo
          icon: Image.asset(_facebookLogo),
        ),
        IconButton(
          onPressed: () {},

          //? Telegram logo
          icon: Image.asset(_whatLogo),
        ),
        IconButton(
          onPressed: () {},

          //? Twitter logo
          icon: Image.asset(_twitterLogo),
        ),
      ],
    );
  }
}
