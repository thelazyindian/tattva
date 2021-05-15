import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/core/dynamic_link_type.dart';
import 'package:tattva/domain/core/i_dynamic_links_facade.dart';

part 'dynamic_links_cubit.freezed.dart';
part 'dynamic_links_state.dart';

@lazySingleton
class DynamicLinksCubit extends Cubit<DynamicLinksState> {
  final IDynamicLinksFacade _dynamicLinksFacade;

  DynamicLinksCubit(this._dynamicLinksFacade)
      : super(DynamicLinksState.initial());

  // Timer? _debounceTimer;
  started() async {
    // if (!(_debounceTimer?.isActive ?? false)) {
    FirebaseDynamicLinks.instance.onLink(onSuccess: (response) async {
      _dynamicLinksFacade
          .getLinkType(deepLinkUri: response?.link)
          .then((linkType) => emit(state.copyWith(linkType: linkType)));
    }, onError: (e) async {
      debugPrint('onLinkError');
      debugPrint(e.message);
    });
    FirebaseDynamicLinks.instance.getInitialLink().then((response) {
      _dynamicLinksFacade
          .getLinkType(deepLinkUri: response?.link)
          .then((linkType) => emit(state.copyWith(linkType: linkType)));
    });
    // _debounceTimer = Timer(Duration(milliseconds: 600), () {});
    // }
  }
}
