import 'package:flutter/material.dart';
import 'package:personal_protfolio/src/config/colors_config.dart';

import '../../../../config/icons.config.dart';

class WelcomePage extends StatelessWidget {
  static const String route = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: TheColors.welcomePrimary, width: 8),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://media.licdn.com/dms/image/D4D03AQHbh2a30AWRFw/profile-displayphoto-shrink_800_800/0/1683387084361?e=1696464000&v=beta&t=pjE858N2efGiK4iW_RZuSC3bIumRHtPVejBjvH04DqE'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 40),
                const Icon(PersonalPortfolioIcons.wave,
                    size: 90, color: TheColors.welcomeIcon)
              ]),
          const Text(
            "Hello",
            style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const Text.rich(
            TextSpan(
                style: TextStyle(fontSize: 100, color: Colors.white),
                children: [
                  TextSpan(text: "I'm "),
                  TextSpan(
                      text: 'Deepraj Baidya',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
            textAlign: TextAlign.center,
          ),
          const Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 40),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Flutter & DevOps Engineer @TEXTMI',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Flutter 💙 • DevOps & Cloud ☁️ • OpenSource 🌐 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
