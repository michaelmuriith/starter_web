import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: InkWell(
            onTap: () => model.navigate(),
            child: Container(
              color: Colors.red,
              child: const Text('Next page'),
            ),
          ),
        ),
      ),
    );
  }
}
