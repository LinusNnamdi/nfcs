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
              hintText: "baptismal name, then surname",
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
          _textFieldName("School Abbreviation"),
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
          _textFieldName("Full Lodge address"),
          //*
          TextFormField(
            decoration: const InputDecoration(
              hintText: "room c5, yahoo junction, ifite.",
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
            decoration: const InputDecoration(
              hintText: "ss89203j]\\'[",
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
            decoration: const InputDecoration(
              hintText: "ss89203j]\\'[",
            ),
          ),
        ],
      ),
    );
  }
}
