import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCustomerFieldWidget extends StatelessWidget {
  final String? customerLabelText, customerHintText;
  final int? maxLine;
  final TextInputType? inputType;
  const AddCustomerFieldWidget({
    Key? key,
    this.customerLabelText,
    this.customerHintText,
    this.maxLine,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: TextFormField(
        maxLines: maxLine,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintStyle: GoogleFonts.poppins(
            fontSize: 15.0,
            fontWeight: FontWeight.normal,
          ),
          labelText: customerLabelText,
          hintText: customerHintText,
          suffixIcon: InkWell(
            onTap: () => {},
            child: const Icon(Icons.clear),
          ),
        ),
      ),
    );
  }
}
