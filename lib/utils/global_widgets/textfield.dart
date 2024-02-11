import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final TextInputType inputType;
  const CustomTextField({super.key,required this.labelText, this.validator,this.inputType = TextInputType.name,required this.controller,this.suffix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        
    autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          suffixIcon: suffix,
          labelText:labelText,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        validator: validator,
        keyboardType: TextInputType.emailAddress,
      
      ),
    );
    
  }
}
