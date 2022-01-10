import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../common/base_image.dart';
import '../../../common/image_asset.dart';
import '../../../themes/style.dart';
import '../quiz_dummy.dart';
import '../quiz_modal.dart';

class QuizCategories extends StatefulWidget {
  QuizCategories({Key key}) : super(key: key);

  @override
  _QuizCategoriesState createState() => _QuizCategoriesState();
}

class _QuizCategoriesState extends State<QuizCategories> {
  QuizModal quizModal;

  @override
  void initState() {
    fetchData();
    // setupLastIndex();
    super.initState();
  }

  fetchData() {
    quizModal = QuizModal.fromJson(quizDummy);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
        itemCount: quizModal.result.length,
        padding: const EdgeInsets.all(Spacing.space16),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: context.colorScheme.strokes,
                ),
              ),
            ],
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(quizModal.result[index].categoryType),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  // key: UniqueKey(),
                  itemBuilder: (BuildContext context, int subIndex) {
                    return Center(
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            // Navigate to corresponding Quiz
                          },
                          child: Stack(
                            children: [
                              BaseImage(
                                asset: NetworkAsset(
                                    url: quizModal
                                        .result[index].quizes[subIndex].image),
                              ),
                              SizedBox(
                                height: 120,
                                width: 100,
                                child: Text(
                                  quizModal.result[index].quizes[subIndex]
                                      .subCategories,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: quizModal.result[index].quizes.length,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
