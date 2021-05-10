import 'package:flutter/material.dart';
import 'package:tattva/application/edit_profile/edit_profile_bloc.dart';
import 'package:tattva/domain/authentication/user.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/email_field.dart';
import 'package:tattva/pages/authentication/widgets/name_field.dart';
import 'package:tattva/pages/core/primary_button.dart';
import 'package:tattva/pages/core/tattva_footer.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/styles.dart';

class EditProfileBody extends StatelessWidget {
  final User user;
  final bool updatingProfile;
  final bool sendingMail;
  final Widget? verificationMailMsg;

  const EditProfileBody({
    Key? key,
    required this.user,
    this.updatingProfile = false,
    this.sendingMail = false,
    this.verificationMailMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(30.0, 24.0, 30.0, 30.0),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: editProfileUploadPicThumbnailSize,
              width: editProfileUploadPicThumbnailSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: user.photoURL == null
                      ? Image.asset(
                          'images/profile.png',
                          fit: BoxFit.cover,
                        ).image
                      : Image.network(
                          user.photoURL!,
                          fit: BoxFit.cover,
                        ).image,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(BTN_UPLOAD_PROFILE_PIC),
              style: secondaryBtnStyle.copyWith(
                textStyle: MaterialStateProperty.all(secondaryBtnTextStyle
                    .copyWith(fontSize: editProfileUploadPicBtnFontSize)),
              ),
            ),
          ],
        ),
        const SizedBox(height: inputFieldsSpacing),
        NameField(
          initialValue: user.displayName,
          enabled: !updatingProfile,
          onChanged: (value) => getIt<EditProfileBloc>()
              .add(EditProfileEvent.onNameChanged(value: value)),
          textInputAction: TextInputAction.go,
        ),
        const SizedBox(height: inputFieldsSpacing),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(inputFieldRadius),
            color: Theme.of(context).inputDecorationTheme.fillColor,
          ),
          child: Row(
            children: [
              Expanded(
                child: EmailField(
                  initialValue: user.email,
                  enabled: false,
                ),
              ),
              user.emailVerified
                  ? Container()
                  : Container(
                      width: 80.0,
                      // color: Colors.red,
                      alignment: Alignment.center,
                      child: sendingMail
                          ? Container(
                              height: 16.0,
                              width: 16.0,
                              child:
                                  CircularProgressIndicator(strokeWidth: 2.0),
                            )
                          : TextButton(
                              onPressed: () {
                                debugPrint('PRESSED');
                                getIt<EditProfileBloc>().add(
                                    EditProfileEvent.sendVerificationMail());
                              },
                              child: Text(BTN_VERIFY_MAIL),
                              style: secondaryBtnStyle.copyWith(
                                textStyle: MaterialStateProperty.all(
                                    secondaryBtnTextStyle.copyWith(
                                        fontSize:
                                            editProfileUploadPicBtnFontSize)),
                              ),
                            ),
                    )
            ],
          ),
        ),
        if (verificationMailMsg != null)
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, .0),
            child: verificationMailMsg!,
          ),
        const SizedBox(height: inputFieldsSpacing),
        PrimaryButton(
          label: EDIT_PROFILE_SAVE_BUTTON,
          loading: updatingProfile,
          onPressed: () =>
              getIt<EditProfileBloc>().add(EditProfileEvent.updatedProfile()),
        ),
        const SizedBox(height: 120.0),
        TattvaFooter(),
      ],
    );
  }
}
