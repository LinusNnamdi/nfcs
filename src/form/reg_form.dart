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
          ),
          //*
          const SizedBox(
            height: _defaultPadding,
          ),
          //*
          _textFieldName("Society Names"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Confraternity of the most holy rosary",
            ),
            // validator: RequiredValidator(errorText: "Society name is needed"),
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
            validator: _passWordValidator,
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
