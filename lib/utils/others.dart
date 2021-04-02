import 'package:flutter/material.dart';

const primaryColor = Color(0xFFFFFFFF);
const accentColor = Color(0xFF000000);
const fontFamily = 'Avenir';

const appNameFontWeight = FontWeight.w600;
const headline1FontWeight = FontWeight.w600;
const headline1Color = accentColor;

const homeTitleFontWeight = FontWeight.w700;
const homeSubTitleFontWeight = FontWeight.w500;

const primaryBtnTextColor = primaryColor;
const secondaryBtnTextColor = accentColor;

const primaryBtnFontWeight = FontWeight.w700;
const secondaryBtnFontWeight = FontWeight.w500;

const inputFieldContentPadding =
    EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0);
const inputFieldFillColor = Color(0xFFF2F3F7);
const inputFieldHintColor = Color(0xFF052D4D);
const inputFieldFontWeight = FontWeight.w500;
const authAppBarPadding = EdgeInsetsDirectional.only(start: 8, bottom: 12);
const facebookColor = Color(0xFF7583CA);
const googleBtnBorderColor = Color(0xFFEBEAEC);

final usernameRegex =
    RegExp(r'^(?=[a-zA-Z0-9_]{8,20}$)(?!.*[_]{2})[^_].*[^_]$');
final emailRegex = RegExp(
    r'^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$');
final passRegex = RegExp(
    r"""^(?=.*[\d])(?=.*[A-Z])(?=.*[a-z])(?=.*[!"#$%&\'()*+,-.\/:;<=>?@[\]^_`{|}~])[\w\d!"#$%&\'()*+,-.\/:;<=>?@[\]^_`{|}~]{8,20}$""");
final nameRegex = RegExp(r'^(([a-zA-Z.]+\s)*[a-zA-Z]{2,50})$');

final errorTextColor = Color(0xFFE12B1F);
final successTextColor = Color(0xFF6CB28E);

final dividerColor = Color(0xFFE1E1E1);
final profileNameFontWeight = FontWeight.w600;

final editProfileTitleFontWeight = FontWeight.w600;
