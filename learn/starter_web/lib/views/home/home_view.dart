import 'package:flutter/material.dart';
import 'package:starter_web/widgets/call_to_action.dart';
import 'package:starter_web/widgets/centered_view.dart';
import 'package:starter_web/widgets/course_details.dart';
import 'package:starter_web/widgets/widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Column(
          children: [
            const NavigationBarWidget(),
            Expanded(
              child: Row(
                children: const [
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Join'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
