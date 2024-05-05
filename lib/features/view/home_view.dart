import 'package:flutter/material.dart';
import 'package:gadget_store_ui/product/widget/lvb/category/category_list_view.dart';
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
          padding: context.padding.onlyTopNormal,
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
                        child: GridView.builder(
                          physics: const ScrollPhysics(
                              parent: NeverScrollableScrollPhysics()),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: Colors.white,
                              elevation: 0.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/png/ic_airpods.png'),
                                      Padding(
                                        padding:
                                            context.padding.onlyRightNormal +
                                                context.padding.onlyTopLow,
                                        child: const Icon(Icons.heart_broken),
                                      )
                                    ],
                                  )),
                                  const Text('Apple Airpods'),
                                  const Text(r'$200.00')
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.heart_broken)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_basket)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              ],
            ),
          ),
        ));
  }

  AppBar _appBar() {
    return AppBar(
      leading: const CircleAvatar(),
      actions: const [Icon(Icons.search_outlined)],
    );
  }
}
