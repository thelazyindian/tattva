import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/subscriptions/i_subscriptions_facade.dart';
import 'package:tattva/domain/subscriptions/subscription.dart';
import 'package:tattva/injection.dart';

part 'subscriptions_event.dart';
part 'subscriptions_state.dart';
part 'subscriptions_bloc.freezed.dart';

@lazySingleton
class SubscriptionsBloc extends Bloc<SubscriptionsEvent, SubscriptionsState> {
  final ISubscriptionsFacade _subscriptionsFacade;
  final Razorpay _razorpay;

  SubscriptionsBloc(this._subscriptionsFacade, this._razorpay)
      : super(SubscriptionsState.initial()) {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  Stream<SubscriptionsState> mapEventToState(
    SubscriptionsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response =
            await _subscriptionsFacade.getSubscriptionItems(token: token);
        final subscriptions =
            List<Subscription>.from(response.fold((l) => [], (r) => r));
        yield state.copyWith(
          subscriptionsOption: optionOf(response),
          activeSubscriptionId:
              subscriptions.isNotEmpty ? subscriptions.first.id : '',
        );
      },
      selectedSubscription: (e) async* {
        yield state.copyWith(activeSubscriptionId: e.id);
      },
      subscribe: (e) async* {
        yield state.copyWith(subscribing: true);
        final activeSusbcription = List<Subscription>.from(state
                .subscriptionsOption
                .fold(() => [], (sOrF) => sOrF.fold((l) => [], (r) => r)))
            .firstWhere((element) => element.id == state.activeSubscriptionId);
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response = await _subscriptionsFacade.createSubscriptionItem(
          token: token,
          planId: activeSusbcription.id,
        );
        // _razorpay.open({
        //   'key': 'rzp_test_wAB48uFEbBb1jd',
        //   'amount': 50000,
        //   'name': 'Acme Corp.',
        //   'description': 'Fine T-Shirt',
        //   'prefill': {
        //     'contact': '9123456789',
        //     'email': 'gaurav.kumar@example.com'
        //   },
        //   'external': {
        //     'wallets': ['paytm']
        //   },
        // });

        yield* response.fold(
          (l) async* {
            yield state.copyWith(subscribing: false);
          },
          (subId) async* {
            final user = await getIt<IAuthFacade>().currentUser!;

            _razorpay.open({
              'key': 'rzp_test_wAB48uFEbBb1jd',
              'subscription_id': subId,
              'name': activeSusbcription.name,
              'description': activeSusbcription.description,
              'prefill': {
                // 'contact': '8888888888',
                'email': user.email,
              },
            });
          },
        );
      },
      paymentSuccess: (e) async* {
        yield state.copyWith(subscribing: false);
      },
      paymentFailure: (e) async* {
        yield state.copyWith(subscribing: false);
      },
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    debugPrint(
        "SUCCESS: paymentId: ${response.paymentId} orderId: ${response.orderId} signature: ${response.signature} subscriptionId: ${response.subscriptionId}");
    add(SubscriptionsEvent.paymentSuccess());
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    debugPrint(
        "BLOC_ERROR: code: ${response.code} message: ${response.message}");
    add(SubscriptionsEvent.paymentFailure());
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    debugPrint("EXTERNAL_WALLET: " + response.walletName);
  }
}
