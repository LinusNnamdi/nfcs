part of "../main.dart";

//*
//? Authenticators
/// Anytime u install this app, u have to Log in ones or register
///  if u haven't registered.
/// Once the app is in ur phone and u are registered or have looged in,
/// [_justInstalled] will be [false].
bool _justInstalled = true;

//*
//? Colors
const _primaryColor = Color(0xff255ed6), _textColor = Color(0xff35364f);

//*
//? User's Parameter
String? _firstName,
    _otherNames,
    _schoolAddress,
    _homeAddress,
    _digit,
    _society,
    _email,
    _school,
    _department,
    _password,
    _gender;

//*
//? Validator
//? creating a costumized validator.
final _passWordValidator = MultiValidator([
  //? To make sue that there is and input
  RequiredValidator(errorText: "Name is needed"),
  MinLengthValidator(8, errorText: "Password must be more than 8 letters"),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: "Special character is need for stronger password"),
]);
