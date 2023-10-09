import 'package:flutter_beginning/modules/screens/preview_screen/preview_screen.dart';
import 'package:flutter_beginning/modules/screens/registration_email_screen/confirmation_code_screen.dart';
import 'package:flutter_beginning/modules/screens/registration_email_screen/registration_email_screen.dart';

final route = {
  '/': (context) => const PreviewScreen(),
  '/registration': (context) => const RegistrationEmailScreen(),
  '/registration/confirm': (context) => const ConfirmationCodeScreen()
};
