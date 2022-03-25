import 'package:starter/locator.dart';
import 'package:starter/router/route_paths.dart';
import 'package:starter/services/service.dart';

import '../../view_model/base_viewmodel.dart';

class SignUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future signUp({
    required String email,
    required String password,
  }) async {
    setBusy(true);

    var result = await _authenticationService.signUpWithEmail(
      email: email,
      password: password,
    );

    setBusy(false);

    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(homeViewRoute);
      } else {
        await _dialogService.showDialog(
          title: 'Sign Up Failed',
          description: 'General sign up failure. Please try again later',
        );
      }
    } else {
      await _dialogService.showDialog(
        title: 'Sign Up Failed',
        description: result,
      );
    }
  }
}
