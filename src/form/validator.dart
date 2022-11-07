part of '../main.dart';

//*
//? NFCS ID validator
// final _nfcsIdValidator = MultiValidator(
//   [

//   ],
// )

//*
//?  Password Validator
final _passWordValidator = MultiValidator([
  //? To make sue that there is and input
  RequiredValidator(errorText: "Name is needed"),
  MinLengthValidator(8, errorText: "Password must be more than 8 letters"),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: "Special character is need for stronger password"),
]);
