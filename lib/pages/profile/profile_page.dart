import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/profile/widgets/profile_items_list.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';
import 'package:auto_route/auto_route.dart';

class ProfilePage extends StatelessWidget {
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
        leading: Center(
          child: IconButton(
            onPressed: () => context.router.pop(),
            icon: SvgPicture.asset(
              'icons/back.svg',
              height: authBackBtnSize,
              width: authBackBtnSize,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: profileIconSize / 2,
                  backgroundImage: (user!.photoURL != null)
                      ? NetworkImage(user.photoURL!)
                      : Image.asset('images/profile.png').image,
                ),
                const SizedBox(width: 24.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.displayName,
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: profileNameFontSize,
                          fontWeight: profileNameFontWeight,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        user.email,
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: profileEmailFontSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Divider(thickness: 4.0, color: dividerColor),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, .0, 30.0, 12.0),
                  child: Text(
                    'ACCOUNT',
                    style: TextStyle(fontSize: profileItemsHeaderFontSize),
                  ),
                ),
                ProfileItemsList(),
                const SizedBox(height: 20.0),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
