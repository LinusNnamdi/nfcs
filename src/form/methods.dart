part of '../main.dart';

//?Border design
/// Border design of each TextFormField at any state with different opacity.
/// it is defined by me
OutlineInputBorder _textFieldBorder(double opacity) {
  return OutlineInputBorder(
      borderSide: BorderSide(
    color: _primaryColor.withOpacity(0.1),
  ));
}

//? Text field name
/// Name of each field.
/// it is defined by me
Widget _textFieldName(String fieldName) {
  return Text(
    fieldName,
    style: TextStyle(
      fontWeight: FontWeight.w600,
      color: Color(0xff515151),
    ),
  );
}
