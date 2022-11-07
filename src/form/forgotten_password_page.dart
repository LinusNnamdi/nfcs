part of "../main.dart";

class _ForgottenPswScreen extends StatefulWidget {
  //*
  _ForgottenPswScreen({Key? key}) : super(key: key);

  @override
  State<_ForgottenPswScreen> createState() => _ForgottenPswScreenState();
}

class _ForgottenPswScreenState extends State<_ForgottenPswScreen> {
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
                      "FORGOTTEN PASSWORD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xffF0FFFF),
                      ),
                    ),
                  ),
                  //*
                  const SizedBox(height: _defaultPadding * 2),

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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => _HomePages(),
                            ),
                          );
                          _formKey.currentState!.save();
                          _justInstalled = false;
                        } else {}
                      },
                      child: const Text("Submit",
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
