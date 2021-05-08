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

  const EditProfileBody({
    Key? key,
    required this.user,
    this.updatingProfile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(30.0, 24.0, 30.0, 30.0),
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
        EmailField(
          initialValue: user.email,
          editProfileView: true,
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
