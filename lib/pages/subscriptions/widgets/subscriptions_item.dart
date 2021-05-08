import 'package:flutter/material.dart';
import 'package:tattva/domain/subscriptions/subscription.dart';

class COLORS {
  static final Color clicked = Color(0xffEBEAEC);
  static final Color subscribed = Color(0xffC4C4C4);
}

class SubscriptionItem extends StatelessWidget {
  final Subscription subscription;
  final bool isSelected;
  final bool isSubscribed;
  final DateTime? renewalDate;
  final VoidCallback? onTap;

  SubscriptionItem({
    Key? key,
    required this.subscription,
    this.isSelected = false,
    this.isSubscribed = false,
    this.renewalDate,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set default color to transparent
    Color color = Colors.transparent;

    // Change color based on whether only clicked or subscribed
    if (isSelected) {
      color = COLORS.clicked;
    }

    if (isSubscribed) {
      color = COLORS.subscribed;
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(12.0),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              subscription.name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                letterSpacing: 0.6,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              subscription.description,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xff908A8A),
                fontSize: 12.0,
                letterSpacing: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget renewsMessage(DateTime renewalDate) {
  //   return Padding(
  //     padding: const EdgeInsets.only(right: 8.0, top: 4.0),
  //     child: Text(
  //       'Renews on ${renewalDate.formattedDateString}',
  //       style: TextStyle(
  //           color: Colors.black,
  //           fontSize: 16.0,
  //           fontWeight: FontWeight.w600,
  //           letterSpacing: 0.4,
  //           decoration: TextDecoration.underline),
  //     ),
  //   );
  // }
}
