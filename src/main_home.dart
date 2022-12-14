//?         MAIN HOME
//?   This is the page that is in-charge of calling the right
//? page, which can be:
//? --Login and Sign page
//? -- Normal home page.
//
//
part of 'main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff000080),
      ),
      title: "Nfcs app by EarnDee",
      home: _justInstalled ? const _FormHome() : _HomePages(),
    );
  }
}
