//? MAIN LIBRARY
//?
//?This is the main Library it all
//?--imports,
//?--exports,... etc are seen.
//
//
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

//Classes in charge of saved items
part 'asset/home.dart';

//Classes for Calls
part 'call/home.dart';

//Classes for all chats
part 'chat/home.dart';

// Welcome, Login and Register classes
// and their Authentications
part 'form/fields.dart';
part 'form/forgotten_password_page.dart';
part 'form/home.dart';
part 'form/login.dart';
part 'form/methods.dart';
part 'form/register.dart';
part 'form/reg_form.dart';
part 'form/validator.dart';
part 'form/welcome.dart';

//Classes in charge of your posts
part 'post/home.dart';
part 'post/page1.dart';
part 'post/page2.dart';

//Classes incharge of all settings
part 'my_settings/home.dart';

//General page that affect more than one page.
part 'main_home.dart';
part 'home_pages.dart';
part 'constants.dart';
part 'social_buttons.dart';

void main(List<String> args) {
  runApp(const Home());
}
