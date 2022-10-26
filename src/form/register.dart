part of "../main.dart";

class _SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<_SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffCAE1FF),
        body: Padding(
            padding: const EdgeInsets.all(_defaultPadding),
            child: SingleChildScrollView(
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
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            //! Log in url
                          },
                          child: const Text("Log in",
                              style: TextStyle(
                                color: Color(0xff0000ff),
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                  ),

                  //*
                  _RegistrationForm(),

                  //*
                ],
              )),
            )));
  }
}
