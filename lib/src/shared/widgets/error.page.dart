import 'package:flutter/material.dart';
import 'package:personal_protfolio/src/config/colors_config.dart';


class ErrorPage extends StatelessWidget {

  final String errorMessage;
  const ErrorPage({
    super.key,
    required this.errorMessage  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              TheColors.errorBgTop,
              TheColors.errorBgBottom
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.warning,
                size: 80,
                color: TheColors.errorIcon
              ),
              const Text('Error!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(errorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  )
                ),
              )
            ]
          )
        ),
      )
    );
  }
}