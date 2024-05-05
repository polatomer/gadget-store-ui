// ignore_for_file: public_member_api_docs, sort_constructors_first
class CategoryModel {
  String? title;

  CategoryModel({this.title});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    return data;
  }

  CategoryModel copyWith({
    String? title,
  }) {
    return CategoryModel(
      title: title ?? this.title,
    );
  }
}
