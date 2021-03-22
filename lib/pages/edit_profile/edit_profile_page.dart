import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/pages/authentication/widgets/email_field.dart';
import 'package:tattva/pages/authentication/widgets/name_field.dart';
import 'package:tattva/pages/authentication/widgets/primary_login_button.dart';
import 'package:tattva/pages/authentication/widgets/username_field.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: .0,
        title: Text(
          EDIT_PROFILE_TITLE,
          style: TextStyle(
            fontSize: editProfileTitleFontSize,
            fontWeight: editProfileTitleFontWeight,
          ),
        ),
        leading: Navigator.canPop(context)
            ? Center(
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: SvgPicture.asset(
                    'icons/back.svg',
                    height: authBackBtnSize,
                    width: authBackBtnSize,
                  ),
                ),
              )
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            NameField(),
            const SizedBox(height: inputFieldsSpacing),
            UsernameField(),
            const SizedBox(height: inputFieldsSpacing),
            EmailField(),
            const SizedBox(height: inputFieldsSpacing),
            PrimaryLoginButton(
              label: EDIT_PROFILE_SAVE_BUTTON,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
