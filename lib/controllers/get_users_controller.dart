import 'package:crud/services/app_http_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GetUsersController extends GetxController {
  final TextEditingController _urlController = TextEditingController();
  TextEditingController get getUrlController => _urlController;

  String _getUserResponse = "";
  String get getUsersResponse => _getUserResponse;

  void onGetUsersClick() async {
    if (_urlController.text.isEmpty) return;
    final response = await AppHttpService.getUser(_urlController.text.trim());
    _getUserResponse = response.body;
    update();
  }
}
