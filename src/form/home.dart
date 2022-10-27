part of '../main.dart';

class _FormHome extends StatelessWidget {
  const _FormHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Powered by EarnDee",
      theme: ThemeData(
        // primaryColor: Colors.white70,

        //*
        //? Used to style forms input fields.
        primaryColor: Colors.transparent,

        textTheme: Theme.of(context).textTheme.apply(
              displayColor: _textColor,
            ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color.fromARGB(100, 200, 200, 200),
          border: _textFieldBorder(0.1),
          enabledBorder: _textFieldBorder(0.1),
          focusedBorder: _textFieldBorder(0.1),
          hintStyle: TextStyle(
            color: const Color(0xff000000).withOpacity(8.0),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5,
          ),
        ),
      ),

      //* For form1/...
      // home: _WelcomeScreen(),

      home: _SignupScreen(),
    );
  }
}
