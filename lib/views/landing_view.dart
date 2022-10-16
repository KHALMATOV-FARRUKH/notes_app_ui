import 'package:flutter/material.dart';
import 'package:notes_app_ui/app_colors.dart';
import 'package:notes_app_ui/views/home_view.dart';
import 'package:notes_app_ui/views/note_widget.dart';

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
            child: const NoteWidget(),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Ежедневные Заметки',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: AppColors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 56),
            child: Text(
              'Делайте заметки, напоминания, устанавливайте цели, собирайте ресурсы',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: h * 0.1,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HomeView(),
              ));
            },
            child: Text(
              'Начать',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: h * 0.1,
          ),
        ],
      ),
    );
  }
}
