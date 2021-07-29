import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/strings.dart';

class BasePasswordField extends StatefulWidget {
  final bool enabled;
  final String? helperText, errorText;
  final Function(String)? onChanged, onFieldSubmitted;
  const BasePasswordField({
    Key? key,
    this.enabled = false,
    this.helperText,
    this.errorText,
    this.onChanged,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  _BasePasswordFieldState createState() => _BasePasswordFieldState();
}

class _BasePasswordFieldState extends State<BasePasswordField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorWidth: cursorWidth,
      obscureText: !_showPassword,
      enabled: widget.enabled,
      decoration: InputDecoration(
        hintText: HINT_TXT_PASSWORD,
        helperText: widget.helperText,
        helperMaxLines: 2,
        errorText: widget.errorText,
        errorMaxLines: 2,
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
      textInputAction: TextInputAction.go,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
    );
  }
}
