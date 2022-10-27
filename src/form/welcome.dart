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
      color: const Color(0xff4444ff),
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
                  bottom: size.height * 0.08,
                  height: size.height * 0.05,
                  left: 8.0,
                  child: SizedBox(
                      width: size.width - 8.0,
                      child: ElevatedButton(
                          onPressed: () {
                            //* moves to login page
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white54),
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
                          )))),

              //*
              //? Register button
              Positioned(
                  bottom: size.height * 0.02,
                  height: size.height * 0.05,
                  left: 8.0,
                  child: SizedBox(
                      width: size.width - 8.0,
                      child: ElevatedButton(
                          onPressed: () {
                            //* moves to login page
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white70,
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
                          )))),
            ],
          ),
        ),
      ),
    );
  }
}
