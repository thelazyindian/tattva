import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class ProfileItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'icon': 'icons/person.svg',
        'name': PROFILE_ITEM_MY_PROFILE,
        'onTap': () {
          Navigator.pushNamed(context, '/edit_profile');
        },
      },
      {
        'icon': 'icons/list.svg',
        'name': PROFILE_ITEM_SUBSCRIPTIONS,
        'onTap': () {},
      },
      {
        'icon': 'icons/heart.svg',
        'name': PROFILE_ITEM_SAVED_ITEMS,
        'onTap': () {},
      },
      {
        'icon': 'icons/message.svg',
        'name': PROFILE_ITEM_FEEDBACK,
        'onTap': () {},
      },
      {
        'icon': 'icons/add.svg',
        'name': PROFILE_ITEM_INVITE_FRIENDS,
        'onTap': () {},
      },
      {
        'icon': 'icons/star.svg',
        'name': PROFILE_ITEM_RATE_US,
        'onTap': () {},
      },
      {
        'icon': 'icons/drop.svg',
        'name': PROFILE_ITEM_ABOUT_US,
        'onTap': () {},
      },
      {
        'icon': 'icons/exit.svg',
        'name': PROFILE_ITEM_LOGOUT,
        'onTap': () {},
      },
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, idx) {
        return ListTile(
          onTap: items[idx]['onTap']!,
          leading: SvgPicture.asset(items[idx]['icon']!),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: .0),
          title: Text(
            items[idx]['name']!,
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(thickness: 1.5, color: dividerColor),
    );
  }
}
