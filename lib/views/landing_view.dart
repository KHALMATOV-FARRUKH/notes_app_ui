import 'package:flutter/material.dart';
import 'package:notes_app_ui/app_colors.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: h * 0.5,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Ежедневные заметки',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
