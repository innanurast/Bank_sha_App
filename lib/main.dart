import 'dart:js';

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/sign-up_page.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:bank_sha/ui/pages/sign_up_set_ktp_page.dart';
import 'package:bank_sha/ui/pages/sign_up_set_profile_page.dart';
import 'package:bank_sha/ui/pages/sign_up_success_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    const MyApp()); //fungsi main ini digunakan untuk mengeksekusi ketika program dijalankan

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
      },
    );
  }
}
