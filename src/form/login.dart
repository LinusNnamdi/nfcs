part of "../main.dart";

class _LoginPage extends StatefulWidget {
  @override
  State<_LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<_LoginPage> {
  final _loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //*
    final size = MediaQuery.of(context).size;

    //*
    return Scaffold(
        backgroundColor: const Color(0xff00008B),
        body: Stack(
          fit: StackFit.expand,
          children: [
            //! Yet to get a better image.
            Positioned(
              left: -size.width * 0,
              top: -size.height * 0,
              child: Image.asset(
                _backgroundImage,
                width: size.width,
                height: size.height,
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(_defaultPadding),
              child: SafeArea(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      _defaultPadding,
                      0,
                      0,
                    ),
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Login page".toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xffF0FFFF),
                      ),
                    ),
                  ),

                  //*
                  Row(
                    children: [
                      const Text(
                        "Do not have any account before",
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Color(0xffF0FFFF),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _SignupScreen(),
                              ),
                            );
                          },
                          child: const Text("Register",
                              style: TextStyle(
                                color: Color(0xff5CACEE),
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                  ),
                  //*
                  const SizedBox(
                    height: _defaultPadding,
                  ),
                  //*

                  //*
                  Form(
                    key: _loginKey,
                    child: ListBody(
                      children: [
                        //*
                        const SizedBox(
                          height: _defaultPadding,
                        ),
                        //*
                        _textFieldName("NFCS ID"),
                        //*
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: "sch-ur_name-id@nfcs.com",
                          ),
                          validator: RequiredValidator(
                              errorText: "Your digit is needed"),
                          onSaved: (input) {
                            _digit = input;
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
                          validator: RequiredValidator(
                              errorText: "Your digit is needed"),
                          onSaved: (input) {
                            _password = input;
                          },
                        ),
                        //*
                        const SizedBox(
                          height: _defaultPadding * 0.5,
                        ),
                        //*
                        TextButton(
                          style: const ButtonStyle(
                            alignment: Alignment.centerLeft,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _ForgottenPswScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Forgotten Password",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        //*
                        const SizedBox(
                          height: _defaultPadding * 2,
                        ),
                      ],
                    ),
                  ),

                  //*
                  ClipRRect(
                    borderRadius: BorderRadius.circular(_defaultPadding),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          if (_loginKey.currentState!.validate()) {
                            //*
                            //! Yet to save [_justInstalled] and other form
                            //!input to a persistent memory, which will delete
                            //! when the app is uninstalled.
                            //? To make the user not to login always.
                            _justInstalled = false;

                            //? To navigate to the HomePage.
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _HomePages(),
                              ),
                            );
                          }
                        },
                        child: const Text("Login",
                            style: TextStyle(
                              color: Color(0xff5CACEE),
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            )),
                      ),
                    ),
                  )
                ],
              )),
            ),
          ],
        ));
  }
}
