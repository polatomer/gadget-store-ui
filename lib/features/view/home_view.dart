import 'package:flutter/material.dart';
import 'package:gadget_store_ui/core/extension/image_extension.dart';
import 'package:gadget_store_ui/product/constants/color_constants.dart';
import 'package:gadget_store_ui/product/constants/string_constant.dart';
import 'package:gadget_store_ui/product/widget/lvb/category/category_list_view.dart';
import 'package:gadget_store_ui/product/widget/lvb/product/product_list_view.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: Padding(
          padding:
              context.padding.onlyTopNormal + context.padding.horizontalLow,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const PngImage(name: StringConstant.flashSale),
                    Padding(
                      padding: context.padding.onlyTopNormal,
                      child: SizedBox(
                        height: context.sized.dynamicHeight(.04),
                        child: const CategoryListView(),
                      ),
                    ),
                    Padding(
                      padding: context.padding.onlyTopNormal,
                      child: const ProductListView(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const _BottomAppBar());
  }

  AppBar _appBar() {
    return AppBar(
      leading: Padding(
        padding: context.padding.onlyLeftLow,
        child: const _avatarImage(),
      ),
      actions: [
        Padding(
          padding: context.padding.onlyRightLow,
          child: _searchIcon(),
        )
      ],
    );
  }

  IconButton _searchIcon() {
    return IconButton(
        onPressed: () {},
        icon: const PngImage(name: StringConstant.searchIcon));
  }
}

class _avatarImage extends StatelessWidget {
  const _avatarImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      child: PngImage(name: StringConstant.avatarIcon),
    );
  }
}

class _BottomAppBar extends StatelessWidget {
  const _BottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: context.sized.dynamicHeight(.11),
      elevation: 0,
      child: Container(
        decoration: _bottomAppBarDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _homeButton(context),
            _heartButton(context),
            _basketButton(context),
            _sprofileButton(context),
          ],
        ),
      ),
    );
  }

  BoxDecoration _bottomAppBarDecoration() {
    return BoxDecoration(
        color: ColorConstants.strechLimo,
        borderRadius: BorderRadius.circular(20));
  }

  IconButton _homeButton(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SizedBox(
            height: context.sized.dynamicHeight(.03),
            child: const PngImage(name: StringConstant.homeIcon)));
  }

  IconButton _heartButton(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SizedBox(
            height: context.sized.dynamicHeight(.028),
            child: const PngImage(name: StringConstant.heartIcon)));
  }

  IconButton _basketButton(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SizedBox(
            height: context.sized.dynamicHeight(.033),
            child: const PngImage(name: StringConstant.basketIcon)));
  }

  IconButton _sprofileButton(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SizedBox(
            height: context.sized.dynamicHeight(.034),
            child: const PngImage(name: StringConstant.profileIcon)));
  }
}
