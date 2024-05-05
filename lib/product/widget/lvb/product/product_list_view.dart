import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gadget_store_ui/product/widget/lvb/product/product_list.dart';
import 'package:kartal/kartal.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  late final List _items;

  @override
  void initState() {
    super.initState();
    _items = ProductList().items;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 0.1,
          child: Padding(
            padding: context.padding.horizontalLow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Image.asset(_items[index].image)),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.grey,
                        size: context.sized.dynamicHeight(.02),
                      ),
                    )
                  ],
                )),
                Text(
                  _items[index].title,
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: context.padding.onlyBottomLow,
                  child: Text(
                    _items[index].price,
                    style: context.general.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
