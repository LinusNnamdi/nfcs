part of '../main.dart';

class _FormHome extends StatelessWidget {
  const _FormHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Powered by EarnDee",
      theme: ThemeData(
        //*
        primaryColor: const Color(0xff000080),

        //*
        //? Used to style forms input fields.
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: _textColor,
            ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color.fromARGB(250, 250, 250, 250),
          border: _textFieldBorder(0.1),
          enabledBorder: _textFieldBorder(0.1),
          focusedBorder: _textFieldBorder(0.1),
          hintStyle: const TextStyle(
            color: Color(0xff778899),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5,
          ),
        ),
      ),

      //* For form1/...
      home: _WelcomeScreen(),
    );
  }
}
