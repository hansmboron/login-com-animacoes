import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;
  final TextInputType type;
  final Function onChanged;
  final String errorText;

  const InputField(
      {this.hint,
      this.obscure,
      this.icon,
      this.type,
      this.onChanged,
      this.errorText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      onChanged: onChanged,
      obscureText: obscure,
      style: TextStyle(fontSize: 17, color: Colors.white),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16.0),
        errorText: errorText,
        errorStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
        ),
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          margin: const EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Icon(
            icon,
            color: Colors.green,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.black54,
      ),
    );
  }
}
