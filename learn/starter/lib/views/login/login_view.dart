import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../constants/constant.dart';
import '../../widget/widget.dart';
import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset('assets/images/title.png'),
              ),
              InputField(
                placeholder: 'Email',
                controller: emailController,
                validationMessage: '',
              ),
              verticalSpaceSmall,
              InputField(
                placeholder: 'Password',
                password: true,
                controller: passwordController,
                validationMessage: '',
              ),
              verticalSpaceMedium,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BusyButton(
                    title: 'Login',
                    onPressed: () {
                      // TODO: Perform firebase login here
                    },
                  )
                ],
              ),
              verticalSpaceMedium,
              TextLink(
                text: 'Create an Account if you\'re new.',
                onPressed: () {
                  // TODO: Handle navigation
                },
              )
            ],
          ),
        ),
      )),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
