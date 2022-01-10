import 'package:flutter/material.dart';

import '../../themes/style.dart';
import 'category_card.dart';

class CategoryType {
  String image;
  String type;
  CategoryType({this.image, this.type});
}

List<CategoryType> _categories = [
  CategoryType(
      type: 'Sports',
      image:
          'https://image.freepik.com/free-vector/ipl-cricket-illustration-hand-drawn-style_23-2149201302.jpg'),
  CategoryType(
      type: 'News',
      image:
          'https://image.freepik.com/free-vector/cartoon-tiny-managers-with-giant-loudspeaker-laptop-flat-illustration_74855-16816.jpg'),
  CategoryType(
      type: 'Entertainment',
      image:
          'https://image.freepik.com/free-vector/happy-tiny-people-listening-spiritual-music_74855-5870.jpg'),
  CategoryType(
      type: 'Automobile',
      image:
          'https://image.freepik.com/free-vector/sticker-design-with-auto-mechanic-cartoon-character_1308-58174.jpg'),
  CategoryType(
      type: 'Tourism',
      image:
          'https://image.freepik.com/free-vector/tourists-talk-together-man-woman-medical-masks_107791-6703.jpg'),
  CategoryType(
      type: 'Top 10',
      image:
          'https://image.freepik.com/free-vector/top-10-award-golden-with-crown_1017-32087.jpg'),
  CategoryType(
      type: 'Stocks',
      image:
          'https://image.freepik.com/free-vector/global-trading-stock-market-analysis-international-commerce-statistics-analyzing-economic-globalization_335657-3236.jpg'),
  CategoryType(
      type: 'Alerts',
      image:
          'https://image.freepik.com/free-vector/tiny-people-standing-near-prohibited-gesture-isolated-flat-illustration_74855-11132.jpg'),
  CategoryType(
      type: 'Startup',
      image:
          'https://image.freepik.com/free-vector/businessman-flying-rocket-business-concept_107791-76.jpg?1'),
  CategoryType(
      type: 'India',
      image:
          'https://image.freepik.com/free-vector/india-background_1284-22033.jpg'),
  CategoryType(
      type: 'World',
      image:
          'https://image.freepik.com/free-vector/man-women-protecting-plant-globe-isolated-flat-vector-illustration-cartoon-people-saving-earth-nature-world-conservation-eco-science-environment_74855-8441.jpg'),
  CategoryType(
      type: 'Technology',
      image:
          'https://image.freepik.com/free-vector/man-women-protecting-plant-globe-isolated-flat-vector-illustration-cartoon-people-saving-earth-nature-world-conservation-eco-science-environment_74855-8441.jpg'),
  CategoryType(
      type: 'Gadgets',
      image:
          'https://image.freepik.com/free-vector/man-women-protecting-plant-globe-isolated-flat-vector-illustration-cartoon-people-saving-earth-nature-world-conservation-eco-science-environment_74855-8441.jpg'),
  CategoryType(
      type: 'Coupons',
      image:
          'https://image.freepik.com/free-vector/man-women-protecting-plant-globe-isolated-flat-vector-illustration-cartoon-people-saving-earth-nature-world-conservation-eco-science-environment_74855-8441.jpg')
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [_buildCategoriesCollection(context)],
    );
  }

  SliverGrid _buildCategoriesCollection(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        CategoryType eachCategory = _categories[index];
        return CategoryCard(
          key: UniqueKey(),
          data: eachCategory,
        );
      }, childCount: _categories.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: Spacing.space4,
        crossAxisSpacing: Spacing.space4,
        crossAxisCount: 3,
        childAspectRatio: 200 / 300,
      ),
    );
  }
}
