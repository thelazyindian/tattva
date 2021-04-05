import 'package:flutter/material.dart';

class CategoriesBar extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: categoriesList.length,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      separatorBuilder: (_, __) => const SizedBox(width: 8.0),
      itemBuilder: (_, idx) => _buildTopRow(idx),
    );
  }

  Widget _buildTopRow(int idx) {
    final title = categoriesList[idx];
    final selected = selectedCategoryIdx == idx;
    final bgColor = Color(0xFFE5E2E2);

    return InkWell(
      onTap: () {
        onItemSelected!(idx);
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
