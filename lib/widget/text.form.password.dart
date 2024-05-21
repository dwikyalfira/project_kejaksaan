import 'package:flutter/material.dart';

class TextFormPassword extends StatefulWidget {
  const TextFormPassword({
    Key? key,
    required this.controller,
    required this.text,
    required TextInputType textInputType,
  }) : super(key: key);

  final TextEditingController controller;
  final String text;

  @override
  _TextFormPasswordState createState() => _TextFormPasswordState();
}

class _TextFormPasswordState extends State<TextFormPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 2, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              validator: (val) {
                return val!.isEmpty ? "Tidak boleh kosong" : null;
              },
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: widget.text,
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero, // Remove default content padding
                hintStyle: TextStyle(
                  height: 1, // Adjust hint text height dynamically
                ),
                hintMaxLines: 1, // Limit hint text to one line
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ],
      ),
    );
  }
}
