import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/screens/quiz/components/progress_bar.dart';
import 'package:quiz_app/screens/quiz/components/question_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/images/back_home.svg',
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text.rich(
                  TextSpan(
                    text: 'Question 1',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: '/10',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => QuestionCard(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
