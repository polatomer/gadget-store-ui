import 'package:flutter/material.dart';
import 'package:gadget_store_ui/product/constants/color_constants.dart';
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
                    Image.asset('assets//png/ic_flash_sale.png'),
                    Padding(
                      padding: context.padding.onlyTopNormal,
                      child: const SizedBox(
                        height: 40,
                        child: CategoryListView(),
                      ),
                    ),
                    Padding(
                      padding: context.padding.onlyTopNormal,
                      child: SizedBox(
                        height: context.sized.dynamicHeight(1),
                        child: const ProductListView(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: context.sized.dynamicHeight(.11),
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
                color: ColorConstants.strechLimo,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        height: context.sized.dynamicHeight(.03),
                        child: Image.asset('assets/png/ic_home.png'))),
                IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        height: context.sized.dynamicHeight(.028),
                        child: Image.asset('assets/png/ic_heart.png'))),
                IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        height: context.sized.dynamicHeight(.033),
                        child: Image.asset('assets/png/ic_basket.png'))),
                IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        height: context.sized.dynamicHeight(.034),
                        child: Image.asset('assets/png/ic_profile.png'))),
              ],
            ),
          ),
        ));
  }

  AppBar _appBar() {
    return AppBar(
      leading: Padding(
        padding: context.padding.onlyLeftLow,
        child: CircleAvatar(
          child: Image.asset('assets/png/ic_avatar.png'),
        ),
      ),
      actions: [
        Padding(
          padding: context.padding.onlyRightLow,
          child: IconButton(
              onPressed: () {}, icon: Image.asset('assets/png/ic_search.png')),
        )
      ],
    );
  }
}
