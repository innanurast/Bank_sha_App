import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText; //digunakan untuk menghandle tampilan input (tulisan diubah * atau tidak )
  final TextEditingController? controller;

  const CustomFormField({ 
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                  style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: obscureText,
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  contentPadding: const EdgeInsets.all(12),
                ),
              ), 
            ],
          );
  }
}