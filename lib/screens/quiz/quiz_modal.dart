class QuizModal {
  String status;
  List<Categories> result;

  QuizModal({this.status, this.result});

  QuizModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result.add(Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = status;
    if (result != null) {
      data['result'] = result.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String categoryType;
  List<Quiz> quizes;
  Categories({
    this.categoryType,
    this.quizes,
  });

  Categories.fromJson(Map<String, dynamic> json) {
    categoryType = json['category_type'];
    if (json['quizes'] != null) {
      quizes = [];
      json['quizes'].forEach((v) {
        quizes.add(Quiz.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['categoryType'] = categoryType;
    if (quizes != null) {
      data['quizes'] = quizes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Quiz {
  String subCategories;
  String image;
  List<Questions> questions;

  Quiz({
    this.subCategories,
    this.image,
    this.questions,
  });

  Quiz.fromJson(Map<String, dynamic> json) {
    subCategories = json['sub_category'];
    image = json['image'];
    if (json['questions'] != null) {
      questions = [];
      json['questions'].forEach((v) {
        questions.add(Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['subCategories'] = subCategories;
    data['image'] = image;
    if (questions != null) {
      data['questions'] = questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Questions {
  String type;
  String difficulty;
  String question;
  List options;

  Questions({
    this.type,
    this.difficulty,
    this.question,
    this.options,
  });

  Questions.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    difficulty = json['difficulty'];
    question = json['question'];
    options = json['options'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['type'] = type;
    data['difficulty'] = difficulty;
    data['question'] = question;
    data['options'] = options;
    return data;
  }
}
