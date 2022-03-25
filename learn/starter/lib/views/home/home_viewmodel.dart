import '../../router/route_paths.dart' as routes;
import '../../locator.dart';
import '../../services/navigation_service.dart';
import '../../view_model/base_viewmodel.dart';

class HomeViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigate() async{
    _navigationService.navigateTo(
      routes.signUpViewROute,
      arguments: '\nFilledStacks',
    );
  }
}
