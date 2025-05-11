import 'package:crud/controllers/sign_up_user_controller.dart';
import 'package:crud/widgets/app_field.dart';
import 'package:crud/model/field_proper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                AppField(
                  proper: FieldProper(
                    controller: controller.getFetchUserUrlController,
                    focusNode: FocusNode(),
                    label: "URL",
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: AppField(
                        proper: FieldProper(
                          controller: controller.getFirstNameController,
                          focusNode: FocusNode(),
                          label: "First Name",
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: AppField(
                        proper: FieldProper(
                          controller: controller.getLastNameController,
                          focusNode: FocusNode(),
                          label: "Last Name",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                AppField(
                  proper: FieldProper(
                    controller: controller.getPhoneNumberController,
                    focusNode: FocusNode(),
                    label: "Phone Number",
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: controller.onSignUpClick,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text(
                    'SignUp',
                    style: GoogleFonts.vazirmatn(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GetBuilder<SignUpController>(
                  builder: (ctl) {
                    return Text(ctl.getSignupResult);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
