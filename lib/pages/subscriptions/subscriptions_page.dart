import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/subscriptions/subscriptions_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/subscriptions/widgets/subscriptions_body.dart';

class SubscriptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.subhead,
        titleAlignment: TextAlign.start,
        title: 'Subscriptions',
      ),
      body: BlocBuilder<SubscriptionsBloc, SubscriptionsState>(
        bloc: getIt<SubscriptionsBloc>()..add(SubscriptionsEvent.started()),
        builder: (context, state) {
          return state.subscriptionsOption.fold(
            () => const Center(child: CircularProgressIndicator()),
            (sOrF) => sOrF.fold(
              (l) => ErrorLoadingListItemView(),
              (subscriptions) => SubscriptionsBody(
                subscriptions: subscriptions,
                activeSubscriptionId: state.activeSubscriptionId,
                subscribing: state.subscribing,
              ),
            ),
          );
        },
      ),
    );
  }
}
