import 'package:flutter/material.dart';

class textfld extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Icon? iconn;
  final bool obscure;
  const textfld({
    super.key,
    required this.label,
    required this.controller,
    required this.obscure,
    this.iconn,
  });

  @override
  State<textfld> createState() => _textfldState();
}

class _textfldState extends State<textfld> {
  bool hide = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hide = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: hide,
      onChanged: (value) {
        setState(() {
          widget.controller.text = value;
        });
      },
      decoration: InputDecoration(
          suffixIcon: widget.obscure == true
              ? InkWell(
                  onTap: () {
                    setState(() {
                      hide = !hide;
                    });
                  },
                  child: Icon(hide == true
                      ? Icons.visibility_off
                      : Icons.visibility_rounded),
                )
              : widget.iconn,
          label: Text(
            widget.label,
            style: TextStyle(color: Colors.black87, fontSize: 15),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}
