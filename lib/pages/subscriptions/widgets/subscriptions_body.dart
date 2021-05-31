import 'package:flutter/material.dart';
import 'package:tattva/application/subscriptions/subscriptions_bloc.dart';
import 'package:tattva/domain/subscriptions/subscription.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/primary_button.dart';
import 'package:tattva/pages/core/tattva_footer.dart';
import 'package:tattva/pages/subscriptions/widgets/subscriptions_item.dart';
import 'package:tattva/utils/others.dart';

class SubscriptionsBody extends StatelessWidget {
  final List<Subscription> subscriptions;
  final String activeSubscriptionId;
  final bool subscribing;

  const SubscriptionsBody({
    Key? key,
    required this.subscriptions,
    required this.activeSubscriptionId,
    required this.subscribing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...subscriptions
                .map(
                  (subscription) => Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, .0, 30.0, 16.0),
                    child: SubscriptionItem(
                      subscription: subscription,
                      isSelected: subscription.id == activeSubscriptionId,
                      onTap: subscribing
                          ? null
                          : () => getIt<SubscriptionsBloc>().add(
                              SubscriptionsEvent.selectedSubscription(
                                  id: subscription.id)),
                    ),
                  ),
                )
                .toList(),
            PrimaryButton(
              label: 'SUBSCRIBE NOW',
              loading: subscribing,
              onPressed: () {
                // Stripe.instance.initPaymentSheet(
                //   paymentSheetParameters: SetupPaymentSheetParameters(
                //       paymentIntentClientSecret: paymentIntentClientSecret),
                // );
                getIt<SubscriptionsBloc>().add(SubscriptionsEvent.subscribe());
              },
            ),
          ],
        ),
        trialText(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: TattvaFooter(),
        ),
      ],
    );
  }

  Widget trialText() {
    final defaultStyle = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 0.3,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: defaultStyle,
          children: [
            TextSpan(text: "After the"),
            TextSpan(
              text: " 7 days free trial, ",
              style: defaultStyle.copyWith(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text:
                  "your subscription will begin and be renewed depending on your plan.",
              style: defaultStyle.copyWith(height: 1.4),
            )
          ],
        ),
      ),
    );
  }
}
