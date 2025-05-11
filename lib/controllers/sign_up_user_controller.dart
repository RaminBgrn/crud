import 'package:crud/services/app_http_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final TextEditingController _fetchUserUrlController = TextEditingController();
  TextEditingController get getFetchUserUrlController =>
      _fetchUserUrlController;
  final TextEditingController _firstNameController = TextEditingController();
  TextEditingController get getFirstNameController => _firstNameController;
  final TextEditingController _lastNameController = TextEditingController();
  TextEditingController get getLastNameController => _lastNameController;
  final TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController get getPhoneNumberController => _phoneNumberController;

  String _responseResult = "";
  set setSignupResponseResult(String result) => _responseResult = result;
  String get getSignupResult => _responseResult;

  void onSignUpClick() async {
    Map<String, String> body = {
      "firstName": _firstNameController.text,
      "lastName": _lastNameController.text,
      "phoneNumber": _phoneNumberController.text,
    };
    if (_fetchUserUrlController.text.isNotEmpty) {
      String url = _fetchUserUrlController.text.trim();

      final response = await AppHttpService.signUp(url, body);
      setSignupResponseResult = response.body;
      update();
    }
  }
}
