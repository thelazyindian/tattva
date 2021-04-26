import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tattva/application/search/search_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';

class SearchFieldAppBar extends StatefulWidget with PreferredSizeWidget {
  final double height;

  SearchFieldAppBar({
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  _SearchFieldAppBarState createState() => _SearchFieldAppBarState();
}

class _SearchFieldAppBarState extends State<SearchFieldAppBar> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchBloc, SearchState>(
      bloc: getIt<SearchBloc>(),
      listener: (context, state) {
        if (state.query.isEmpty) {
          _textEditingController.clear();
        }
      },
      child: Material(
        color: Theme.of(context).primaryColor,
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
          padding:
              const EdgeInsets.symmetric(horizontal: appBarPaddingHorizontal),
          height: widget.preferredSize.height,
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (Navigator.canPop(context))
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  splashRadius: 28.0,
                  icon: SvgPicture.asset(
                    'icons/back.svg',
                    height: 14.0,
                    width: 14.0,
                  ),
                ),
              Expanded(
                child: TextField(
                  controller: _textEditingController,
                  cursorWidth: 1.0,
                  onChanged: (value) => getIt<SearchBloc>()
                      .add(SearchEvent.onQueryChanged(value: value)),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    suffixIcon: BlocBuilder<SearchBloc, SearchState>(
                      bloc: getIt<SearchBloc>(),
                      builder: (context, state) {
                        return state.query.isEmpty
                            ? Container(
                                height: .0,
                                width: .0,
                              )
                            : IconButton(
                                onPressed: () {
                                  getIt<SearchBloc>().add(SearchEvent.cancel());
                                },
                                color: inputFieldHintColor,
                                splashRadius: 16.0,
                                icon: Icon(Icons.close),
                              );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
