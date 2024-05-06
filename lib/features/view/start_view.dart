import 'package:flutter/material.dart';
import 'package:gadget_store_ui/core/extension/image_extension.dart';
import 'package:gadget_store_ui/features/view/home_view.dart';
import 'package:gadget_store_ui/product/constants/string_constant.dart';
import 'package:kartal/kartal.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _consoleImage(context),
          Padding(
            padding: context.padding.onlyTopNormal,
            child: _title(context),
          ),
          _secondTitle(context),
          Padding(
            padding: context.padding.onlyTopLow,
            child: _Subtitle(context),
          ),
          _secondSubTitle(context),
          InkWell(
            onTap: () {
              homeRoute(context);
            },
            borderRadius: BorderRadius.circular(100),
            child: _rightIcon(context),
          )
        ],
      ),
    );
  }

  SizedBox _consoleImage(BuildContext context) {
    return SizedBox(
        height: context.sized.dynamicHeight(.55),
        width: context.sized.dynamicWidth(1),
        child: const PngImage(name: StringConstant.consoleImage));
  }

  Text _title(BuildContext context) {
    return Text(
      StringConstant.startTitle,
      style: context.general.textTheme.headlineSmall
          ?.copyWith(fontWeight: FontWeight.w700),
    );
  }

  Text _secondTitle(BuildContext context) {
    return Text(
      StringConstant.startSecondTitle,
      style: context.general.textTheme.headlineSmall
          ?.copyWith(fontWeight: FontWeight.w700),
    );
  }

  Text _Subtitle(BuildContext context) {
    return Text(
      StringConstant.startSubTitle,
      style: context.general.textTheme.bodyMedium?.copyWith(color: Colors.grey),
    );
  }

  Text _secondSubTitle(BuildContext context) {
    return Text(
      StringConstant.startSecondSubTitle,
      style: context.general.textTheme.bodyMedium?.copyWith(color: Colors.grey),
    );
  }

  SizedBox _rightIcon(BuildContext context) {
    return SizedBox(
        height: context.sized.dynamicHeight(.15),
        child: const PngImage(name: StringConstant.rightIcon));
  }

  void homeRoute(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const HomeView(),
    ));
  }
}
