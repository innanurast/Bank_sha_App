import 'package:bank_sha/shared/theme.dart';
import "package:bank_sha/ui/widgets/buttons.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Akun Berhasil\n Terdaftar',
          style: blackTextStyle.copyWith(
            fontSize: 20, 
            fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 26,
            ),
          Text('Grow your finance start\ntogether with us',
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            width: 183,
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false); //menghapus halaman sebelumnya dan hanya bisa ke home
            },
          ),
        ],
      ),
      ),

    );
  }
}