part of "../main.dart";

class _WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<_WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    //
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(_defaultPadding),
      color: const Color(0xff000080),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              //*
              //? NFCS logo at the background
              ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.white60,
                    BlendMode.modulate,
                  ),
                  child: Image.asset(
                    _nfcsLogo,
                    width: size.width - 8.0,
                    height: size.height,
                  )),

              //*
              //? NFCS
              Positioned(
                  top: size.height * 0.06,
                  left: 0,
                  width: size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "NFCS".toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(
                          height: _defaultPadding,
                        ),
                        const Text(
                          "(Nigeria federation of catholic students)",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white54,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ])),

              //*
              //? LOG IN button
              Positioned(
                  bottom: size.height * 0.1,
                  height: size.height * 0.06,
                  left: size.width * 0.05 - 16,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(_defaultPadding),
                    child: SizedBox(
                        width: size.width * 0.9,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _LoginPage(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white54.withOpacity(.3),
                            ),
                            child: Container(
                              color: Colors.transparent,
                              alignment: Alignment.center,
                              child: const Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ))),
                  )),

              //*
              //? Register button
              Positioned(
                  bottom: size.height * 0.02,
                  height: size.height * 0.06,
                  left: size.width * 0.05 - 16,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(_defaultPadding),
                      child: SizedBox(
                          width: size.width * 0.9,

                          //? Used to navigate abck to exactly the previous
                          //? Page.
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => _SignupScreen(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white70.withOpacity(.2),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ))))),
            ],
          ),
        ),
      ),
    );
  }
}
