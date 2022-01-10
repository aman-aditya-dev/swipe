import 'package:flutter/material.dart';

import '../../common/base_image.dart';
import '../../common/image_asset.dart';
import '../../themes/style.dart';
import 'categories_screen.dart';

class CategoryCard extends StatelessWidget {
  final CategoryType data;
  // final String label;

  const CategoryCard({
    Key key,
    @required this.data,
    // @required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BaseImage(
              height: 90,
              width: 90,
              asset: NetworkAsset(url: data.image),
            ),
            SizedBox(
              height: Spacing.space12,
            ),
            Text(data.type)
          ],
        ),
      ),
    );
  }
}
