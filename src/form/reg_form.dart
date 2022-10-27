part of '../main.dart';

class _RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<_RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListBody(
        children: [
          //*
          _textFieldName("First Name"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Native Name",
            ),
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
