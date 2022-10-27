part of "../main.dart";

class _SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<_SignupScreen> {
  @override
  Widget build(BuildContext context) {
    //*
    final size = MediaQuery.of(context).size;

    //*
    return Scaffold(
        backgroundColor: const Color(0xffCAE1FF),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: -size.width * 0.5,
              top: -size.height * 0.5,
              child: Image.asset(
                _holyGhostImage,
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
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Register",
                          style: TextStyle(
                            color: const Color(0xff000000).withOpacity(1),
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
