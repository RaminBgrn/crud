import 'package:crud/model/field_proper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppField extends StatelessWidget {
  final FieldProper proper;
  const AppField({required this.proper, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: proper.controller,
      focusNode: proper.focusNode,
      decoration: InputDecoration(
        label: Text(
          proper.label,
          style: GoogleFonts.vazirmatn(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        ),
        border: _border(),
        focusedBorder: _border(),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.deepPurple),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
