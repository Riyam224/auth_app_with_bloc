import 'package:flutter/material.dart';

class TextFormatField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final GlobalKey<FormState> fKey;
  const TextFormatField(
      {super.key,
      required this.controller,
      required this.label,
      required this.fKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: fKey,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          validator: (value) => value!.isEmpty ? 'Enter $label' : null,
        ),
      ),
    );
  }
}
