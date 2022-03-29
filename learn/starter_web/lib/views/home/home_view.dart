import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:starter_web/widgets/navigation_bar/navbar_bar.dart';

import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/navigation_drawer/navigation_drawer.dart';
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const NavigationBarWidget(),
              Expanded(
                  child: ScreenTypeLayout(
                mobile: const HomeContentMobile(),
                desktop: const HomeContentDesktop(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
