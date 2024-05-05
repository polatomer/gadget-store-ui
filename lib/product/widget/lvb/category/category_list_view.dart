import 'package:flutter/material.dart';
import 'package:gadget_store_ui/product/widget/lvb/category/category_list.dart';
import 'package:kartal/kartal.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  late final List _items;

  @override
  void initState() {
    super.initState();
    _items = CategoryList().items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return TextButton(
            onPressed: () {},
            child: Text(
              _items[index].title,
              style: context.general.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ));
      },
    );
  }
}
