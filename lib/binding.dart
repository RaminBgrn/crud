import 'package:crud/controllers/get_users_controller.dart';
import 'package:crud/controllers/sign_up_user_controller.dart';
import 'package:get/get.dart';

class BindingControllers extends Bindings{
  @override
  void dependencies() {
    Get.put(GetUsersController());
    Get.put(SignUpController());
  }
}