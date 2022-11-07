part of "../main.dart";

class _SignupScreen extends StatefulWidget {
  //*
  _SignupScreen({Key? key}) : super(key: key);

  @override
  State<_SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<_SignupScreen> {
  //*
  final _formKey = GlobalKey<FormState>();

  //*
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
              left: -size.width * 0.5,
              top: -size.height * 0.5,
              child: Image.asset(
                _backgroundImage,
                width: size.width * 2,
                height: size.height * 2,
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(_defaultPadding),
              child: SafeArea(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "NFCS REGISTRATION",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xffF0FFFF),
                      ),
                    ),
                  ),

                  //*

                  //*
                  Row(
                    children: [
                      const Text(
                        "Already have an account?",
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
                                builder: (context) => _LoginPage(),
                              ),
                            );
                          },
                          child: const Text("Log in",
                              style: TextStyle(
                                color: Color(0xff5CACEE),
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                  ),

                  //*
                  _RegistrationForm(formKey: _formKey),

                  //*
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //*
                          //! Yet to save [_justInstalled] and other form
                          //!input to a persistent memory, which will delete
                          //! when the app is uninstalled.
                          _formKey.currentState!.save();
                          _justInstalled = false;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => _HomePages(),
                            ),
                          );
                        } else {}
                      },
                      child: const Text("Register",
                          style: TextStyle(
                            color: Color(0xff5CACEE),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          )),
                    ),
                  )
                ],
              )),
            ),
          ],
        ));
  }
}
