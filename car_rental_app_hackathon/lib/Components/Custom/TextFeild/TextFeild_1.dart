// ignore_for_file: file_names

import 'package:car_rental_app_hackathon/Config/size_config.dart';
import 'package:car_rental_app_hackathon/Model/TextFeildModel.dart';
import 'package:flutter/material.dart';

class TextFeild1 extends StatefulWidget {
  final TextFeildModel reference;
  const TextFeild1({required this.reference, Key? key}) : super(key: key);

  @override
  _TextFeild1State createState() => _TextFeild1State();
}

class _TextFeild1State extends State<TextFeild1> {
  late TextFeildModel ref;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref = widget.reference;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(
          vertical: getSize(false, .0125),
        ),
        child: TextField(
          onChanged: (String value) {
            setState(() {
              ref.isError = value.isEmpty;
            });
            ref.onChange(value);
          },
          controller: ref.control,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            label: Text(ref.label),
            hintText: ref.label,
            alignLabelWithHint: true,
            errorText: widget.reference.isError ? ref.errorMessage : null,
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFFE0E0E0))),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffbdbdbd))),
            errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
          ),
          textInputAction: TextInputAction.next,
        ));
  }
}



class TextFeild2 extends StatefulWidget {
  final TextFeildModel reference;
  const TextFeild2({required this.reference, Key? key}) : super(key: key);

  @override
  _TextFeild2State createState() => _TextFeild2State();
}

class _TextFeild2State extends State<TextFeild2> {
  late TextFeildModel ref;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref = widget.reference;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getSize(false, 0.05),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        child: TextField(
          onChanged: (String value) {
            setState(() {
              ref.isError = value.isEmpty;
            });
            ref.onChange(value);
          },
          controller: ref.control,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0),
            hintText: ref.label,
            hintStyle: const TextStyle(fontSize: 10),
            alignLabelWithHint: true,
            errorText: widget.reference.isError ? ref.errorMessage : null,
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFFE0E0E0))),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffbdbdbd))),
            errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
          ),
          textInputAction: TextInputAction.next,
        ));
  }
}
