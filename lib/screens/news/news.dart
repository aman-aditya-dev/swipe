import 'package:flutter/material.dart';
import 'news_dummy.dart';
import 'news_item.dart';
import 'news_modal.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  int index = 0;
  NewsModal newsModal;

  @override
  void initState() {
    fetchData();
    // setupLastIndex();
    super.initState();
  }

  fetchData() {
    newsModal = NewsModal.fromJson(newsDummy);
  }

  void updateIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
    // SharePreference.setLastIndex(newIndex);
  }

  // void setupLastIndex() async {
  //   // int lastIndex = await SharePreference.getLastIndex();
  //   // if (lastIndex != null && lastIndex < newsModal.result.length - 1) {
  //     updateIndex(lastIndex);
  //   // }
  // }

  void updateContent(direction) {
    if (index <= 0 && direction == DismissDirection.down) {
      index = newsModal.result.length - 1;
    } else if (index == newsModal.result.length - 1 &&
        direction == DismissDirection.up) {
      index = 0;
    } else if (direction == DismissDirection.up) {
      index++;
    } else {
      index--;
    }
    updateIndex(index);
  }

  Widget newsCard(int index) {
    return NewsCard(
      imgUrl: newsModal.result[index].urlToImage,
      primaryText: newsModal.result[index].title,
      secondaryText: newsModal.result[index].description,
      sourceName: newsModal.result[index].sourceName,
      author: newsModal.result[index].author,
      publishedAt: newsModal.result[index].publishedAt,
      url: newsModal.result[index].url,
    );
  }

  @override
  Widget build(BuildContext context) {
    int prevIndex = index <= 0 ? 0 : index - 1;
    int nextIndex = index == newsModal.result.length - 1 ? 0 : index + 1;
    return Dismissible(
      background: newsCard(prevIndex),
      child: newsCard(index),
      secondaryBackground: newsCard(nextIndex),
      resizeDuration: Duration(milliseconds: 10),
      key: Key(index.toString()),
      direction: DismissDirection.vertical,
      onDismissed: (direction) {
        updateContent(direction);
      },
    );
  }
}
