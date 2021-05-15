part of 'dynamic_links_cubit.dart';

@freezed
class DynamicLinksState with _$DynamicLinksState {
  const factory DynamicLinksState({required Option<DynamicLinkType> linkType}) =
      _DynamicLinksState;

  factory DynamicLinksState.initial() => _DynamicLinksState(linkType: none());
}
