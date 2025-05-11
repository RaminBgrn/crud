import 'package:crud/controllers/get_users_controller.dart';
import 'package:crud/widgets/app_field.dart';
import 'package:crud/model/field_proper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FetchUserScreen extends GetView<GetUsersController> {
  const FetchUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppField(
                    proper: FieldProper(
                      controller: controller.getUrlController,
                      focusNode: FocusNode(),
                      label: "URL",
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: controller.onGetUsersClick,
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text(
                      'Get',
                      style: GoogleFonts.vazirmatn(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GetBuilder<GetUsersController>(
                    builder: (ctl) {
                      return Text(ctl.getUsersResponse);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
