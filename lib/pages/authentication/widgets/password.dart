import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/constants/strings.dart';
import 'package:tattva/constants/dimens.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorWidth: cursorWidth,
      obscureText: !_showPassword,
      decoration: InputDecoration(
        hintText: HINT_TXT_PASSWORD,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
          splashColor: Colors.transparent,
          icon: SvgPicture.asset(
            _showPassword
                ? 'icons/password_show.svg'
                : 'icons/password_hide.svg',
          ),
        ),
      ),
    );
  }
}
