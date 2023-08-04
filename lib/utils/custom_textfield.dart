import 'package:flutter/material.dart';

Widget customTextField( TextEditingController controller,String prefixIcon,onChange) {
  return Container(
    margin: const EdgeInsets.symmetric(
        vertical: 0, horizontal: 10),
    child: Form(
      autovalidateMode: AutovalidateMode
          .always,
      child: TextFormField(
          controller: controller,
          onChanged: onChange,
          decoration: InputDecoration(
            prefixIconConstraints: const BoxConstraints(
                minWidth: 26, maxHeight: 26),
            prefixIcon: Container(
                margin: const EdgeInsets.fromLTRB(
                    0, 0, 8, 0),
                child: Image.asset(
                  prefixIcon,
                  scale: 3,
                )),
            enabledBorder:
            const UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.lightBlue,
                )),
            hintText: 'example@email.com',
            hintStyle: const TextStyle(color: Colors.grey),
          )),
    ),
  );
}