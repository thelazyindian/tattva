import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/edit_profile/edit_profile_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/edit_profile/widgets/edit_profile_body.dart';
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
      body: RefreshIndicator(
        onRefresh: () async =>
            getIt<EditProfileBloc>().add(EditProfileEvent.started()),
        child: BlocBuilder<EditProfileBloc, EditProfileState>(
          bloc: getIt<EditProfileBloc>()..add(EditProfileEvent.started()),
          builder: (context, state) {
            return state.updateProfileOption.fold(
              () => const Center(
                child: CircularProgressIndicator(),
              ),
              (sOrF) => sOrF.fold(
                (l) => ErrorLoadingListItemView(),
                (r) => EditProfileBody(
                  user: r,
                  updatingProfile: state.updating,
                  sendingMail: state.sendingMail,
                  verificationMailMsg: state.sendingMailOption.fold(
                    () => null,
                    (sOrF) => sOrF.fold(
                      (l) => Text(
                        'Failed to send verification mail.',
                        style: TextStyle(color: Colors.red.shade400),
                      ),
                      (r) => Text(
                        'Check email for verification link.',
                        style: TextStyle(color: Colors.green.shade400),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
