import 'package:ecommerce_app/view/screen/auth/forgotpassword/forgotpassword_screen.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/auth/forgotpassword/resetpassword_screen.dart';
import 'package:ecommerce_app/view/screen/auth/signup_screen.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup_screen.dart';
import 'package:ecommerce_app/view/screen/auth/forgotpassword/successresetpassword_screen.dart';
import 'package:ecommerce_app/view/screen/auth/forgotpassword/verifycode_screen.dart';
import 'package:ecommerce_app/view/screen/auth/verifycode_signup_screen.dart';
import 'package:ecommerce_app/view/screen/home_screen.dart';
import 'package:ecommerce_app/view/screen/language_screen.dart';
import 'package:ecommerce_app/view/screen/onboarding_screen.dart';
import 'package:get/get.dart';

import 'core/middleware/mymiddleware.dart';

class Routes {
  static const String language = '/language';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String frogotPassword = '/frogotpassword';
  static const String verfiyCode = '/verfiycode';
  static const String resetPassword = '/resetpassword';
  static const String successSignUp = '/successsignup';
  static const String successResetPassword = '/successresetpassword';
  static const String verfiySignUpCode = '/verfiysignupcode';
  static const String home = '/home';
}

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: '/',
      page: () => const LanguageScreen(),
      middlewares: [MyMiddleWare()]),
  GetPage(name: Routes.onboarding, page: () => const OnBoardingScreen()),
  GetPage(name: Routes.login, page: () => const LoginScreen()),
  GetPage(name: Routes.signUp, page: () => const SignUpScreen()),
  GetPage(
      name: Routes.frogotPassword, page: () => const FrogotPasswordScreen()),
  GetPage(name: Routes.verfiyCode, page: () => const VerfyCodeScreen()),
  GetPage(name: Routes.resetPassword, page: () => const ResetPasswordScreen()),
  GetPage(name: Routes.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: Routes.successResetPassword,
      page: () => const SuccessResetPasswordScreen()),
  GetPage(
      name: Routes.verfiySignUpCode, page: () => const VerfyCodeSignUpScreen()),
  GetPage(
      name: Routes.home, page: () => const HomeScreen()),
];

