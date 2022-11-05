part of '../main.dart';

class _RegistrationForm extends StatelessWidget {
  //*
  const _RegistrationForm({Key? key, required this.formKey}) : super(key: key);

  //*
  final GlobalKey formKey;

  //*
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: ListBody(
        children: [
          //*
          _textFieldName("First Name"),
          //*
          TextFormField(
            //*
            //? This display an input but it's decoration are defined
            //? in home.dart MaterialApp.
            decoration: const InputDecoration(
              hintText: "Native Name",
            ),

            //*
            //? This uses the package form field Validator to make sure
            //?that there is an input.
            validator: RequiredValidator(errorText: "Name is needed"),
            onSaved: (input) {
              _firstName = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Other Names"),

          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Baptismal name, then surname",
            ),
            validator: RequiredValidator(errorText: "Name is needed"),
            onSaved: (input) {
              _otherNames = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Pius Society Names"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Confraternity of the most holy rosary",
            ),
            // validator: RequiredValidator(errorText: "Society name is needed"),
            onSaved: (input) {
              _pSociety = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Social Society Names"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Confraternity of the most holy rosary",
            ),
            // validator: RequiredValidator(errorText: "Society name is needed"),
            onSaved: (input) {
              _sSociety = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Email"),
          //*
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "myEmail@host.com",
            ),
            validator: EmailValidator(errorText: "Valid email Required."),
            onSaved: (input) {
              _email = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Phone"),
          //*
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              hintText: "+1238148478414",
            ),
            validator: RequiredValidator(errorText: "Your digit is needed"),
            onSaved: (input) {
              _digit = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Department"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Electrical Engineering",
            ),
            validator: RequiredValidator(
                errorText: "Department and faculty is needed"),
            onSaved: (input) {
              _department = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("School short name"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Unizik",
            ),
            validator:
                RequiredValidator(errorText: "Your school name is needed"),
            onSaved: (input) {
              _school = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("School Lodge address"),
          //*
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            decoration: const InputDecoration(
              hintText: "room c5, Aso rock villa, yahoo junction, ifite.",
            ),
            // validator: RequiredValidator(
            //   errorText: "Your school address is needed"),
            onSaved: (input) {
              _schoolAddress = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Home Address"),
          //*
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            decoration: const InputDecoration(
              hintText: "Compound, Village, Town, LGA, State.",
            ),
            // validator: RequiredValidator(errorText: "Name is needed"),
            onSaved: (input) {
              _homeAddress = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Gender"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Male or Female?",
            ),
            validator: RequiredValidator(errorText: "Your gender is needed"),
            onSaved: (input) {
              _gender = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Password"),
          //*
          TextFormField(
            obscuringCharacter: "?",
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Am i a good nfcser?",
            ),
            validator: _passWordValidator,
            onSaved: (input) {
              _password = input;
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Confirm Password"),
          //*
          TextFormField(
            obscuringCharacter: "?",
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Am i a good nfcser?",
            ),
            validator: (cpsw) {
              MatchValidator(errorText: "Password didn,t match")
                  .validateMatch(cpsw!, _password!);
            },
          ),
          //*
          const SizedBox(
            height: _defaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
