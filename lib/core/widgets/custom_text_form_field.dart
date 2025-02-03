import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.validator,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.inputFormatters,
  });
  final String? Function(String?) validator;
  final void Function(String?) onChanged;
  final String hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      keyboardType: TextInputType.number,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon, color: Colors.grey),
        suffixIcon: Icon(suffixIcon, color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black38),
      ),
    );
  }
}
