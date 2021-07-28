part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.reset() = _Reset;
  const factory SearchEvent.onQueryChanged({required String value}) =
      _OnQueryChanged;
  const factory SearchEvent.search() = _Search;
  const factory SearchEvent.loadMore() = _LoadMore;
  const factory SearchEvent.cancel() = _Cancel;
  const factory SearchEvent.changedTab({required int index}) = _ChangedTab;
}
