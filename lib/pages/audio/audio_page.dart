import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tattva/pages/audio/widgets/audio_category_item.dart';
import 'package:tattva/pages/audio/widgets/page_contents.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';

class AudioPage extends StatefulWidget {
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  List<List<String>> superList = [
    ["AIR", "WATER", "FIRE"],
    ["EMOTIONAL HAPPINESS", "POSITIVE MINDSET", "CONFIDENCE & STRENGTH"],
    ["PRAYER 1", "PRAYER 2", "PRAYER 3"]
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "Audio"),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          TopRow(
            onItemSelected: (idx) {
              setState(() {
                selectedIndex = idx;
              });
            },
          ),
          const SizedBox(height: 58.0),
          PageContents(textsList: superList[selectedIndex]),
        ],
      ),
    );
  }
}

class TopRow extends StatefulWidget {
  final Function(int) onItemSelected;
  TopRow({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  _TopRowState createState() => _TopRowState();
}

class _TopRowState extends State<TopRow> {
  int selectedItem = 0;
  List<Map<String, dynamic>> items = [
    {
      'imageUri': 'assets/top_categories.png',
      'heading': 'Tattva and Elements',
      'subHeading': '3-10min',
    },
    {
      'imageUri': 'assets/top_categories.png',
      'heading': 'Guided Meditations',
      'subHeading': '3-10min',
    },
    {
      'imageUri': 'assets/top_categories.png',
      'heading': 'Short Prayers',
      'subHeading': '3-10min',
    },
  ];

  Widget _buildRoundedCards({
    required int index,
    required String imageUri,
    required String heading,
    required String subHeading,
  }) {
    return Opacity(
      opacity: selectedItem == index ? 1.0 : 0.7,
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {
          if (selectedItem != index) {
            setState(() {
              selectedItem = index;
              widget.onItemSelected(selectedItem);
            });
          }
        },
        child: AudioCategoryItem(
          imageUri: imageUri,
          heading: heading,
          subHeading: subHeading,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, idx) => _buildRoundedCards(
          index: idx,
          imageUri: items[idx]['imageUri'],
          heading: items[idx]['heading'],
          subHeading: items[idx]['subHeading'],
        ),
        separatorBuilder: (context, idx) => const SizedBox(width: 10),
        itemCount: items.length,
      ),
    );
  }
}
