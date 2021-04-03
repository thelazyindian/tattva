import 'package:flutter/material.dart';

class CategoriesBar extends StatefulWidget {
  final Function(int)? onItemSelected;
  final List<String> categoriesList;
  final int selectedCategoryIdx;

  CategoriesBar({
    Key? key,
    this.onItemSelected,
    required this.categoriesList,
    required this.selectedCategoryIdx,
  }) : super(key: key);

  @override
  _CategoriesBarState createState() => _CategoriesBarState();
}

class _CategoriesBarState extends State<CategoriesBar> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: widget.categoriesList.length,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      separatorBuilder: (_, __) => const SizedBox(width: 8.0),
      itemBuilder: (_, idx) => _buildTopRow(idx),
    );
  }

  Widget _buildTopRow(int idx) {
    final title = widget.categoriesList[idx];
    final selected = selectedItem == idx;
    final bgColor = Color(0xFFE5E2E2);

    return InkWell(
      onTap: () {
        setState(() {
          if (selected) {
            selectedItem = -1;
          } else {
            selectedItem = idx;
            if (widget.onItemSelected != null) {
              widget.onItemSelected!(selectedItem);
            }
          }
        });
      },
      borderRadius: BorderRadius.circular(20.0),
      child: Chip(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        backgroundColor: selected ? bgColor : bgColor.withOpacity(0.5),
        label: Text(
          title,
          style: TextStyle(
            color: selected ? Colors.black : Colors.grey,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
