part of 'home_items_bloc.dart';

@freezed
class HomeItemsState with _$HomeItemsState {
  const factory HomeItemsState({
    required Option<Either<Failure, TattvaItemsModel>> tattvaItemsOption,
  }) = _HomeItemsState;

  factory HomeItemsState.initial() => _HomeItemsState(
        tattvaItemsOption: none(),
      );
}
