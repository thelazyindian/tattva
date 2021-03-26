import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/email_field.dart';
import 'package:tattva/pages/authentication/widgets/name_field.dart';
import 'package:tattva/pages/authentication/widgets/primary_login_button.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/styles.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user =
        getIt<AuthenticationBloc>().state.authFailureOrSuccessOption.fold(
              () => null,
              (authFailureOrSuccess) => authFailureOrSuccess.fold(
                (l) => null,
                (r) => r,
              ),
            );

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
      body: ListView(
        padding: const EdgeInsets.fromLTRB(30.0, 24.0, 30.0, 30.0),
        children: [
          user!.photoURL == null
              ? Image.asset(
                  'images/profile.png',
                  width: editProfileUploadPicThumbnailSize,
                  height: editProfileUploadPicThumbnailSize,
                )
              : Image.network(
                  user.photoURL!,
                  width: editProfileUploadPicThumbnailSize,
                  height: editProfileUploadPicThumbnailSize,
                ),
          TextButton(
            onPressed: () {},
            child: Text(BTN_UPLOAD_PROFILE_PIC),
            style: secondaryBtnStyle.copyWith(
              textStyle: MaterialStateProperty.all(secondaryBtnTextStyle
                  .copyWith(fontSize: editProfileUploadPicBtnFontSize)),
            ),
          ),
          const SizedBox(height: inputFieldsSpacing),
          NameField(
            initialValue: user.displayName,
          ),
          const SizedBox(height: inputFieldsSpacing),
          EmailField(
            initialValue: user.email,
          ),
          const SizedBox(height: inputFieldsSpacing),
          PrimaryLoginButton(
            label: EDIT_PROFILE_SAVE_BUTTON,
            onPressed: () {},
          ),
          const SizedBox(height: 120.0),
          Center(
            child: Text(
              APP_NAME,
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: appNameFontWeight,
                fontSize: appNameFontSize,
                letterSpacing: appNameLetterSpacing,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
