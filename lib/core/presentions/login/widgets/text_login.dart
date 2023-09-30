import 'package:flutter/material.dart';

import '../../../styles/app_padding.dart';
import '../../../widgets/text_app.dart';

class LoginAndPassWordWidgats extends StatelessWidget {
  final String text;
  final Color? colors;
  final double? fontSize;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final String? hintText;

  const LoginAndPassWordWidgats({
    super.key,
    required this.text,
    this.colors,
    this.fontSize,
    required this.textInputType,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixIcon,
    this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApps(
          text: text,
          color: Colors.grey,
          fontSize: 16,
        ),
        SizedBox(height: ManagerPadding.p4),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
        ),
      ],
    );
  }
}
