import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: context.sized.dynamicHeight(.55),
              width: context.sized.dynamicWidth(1),
              child: Image.asset('assets/png/ic_console.png')),
          Padding(
            padding: context.padding.onlyTopNormal,
            child: Text(
              'YOUR GATEWAY TO',
              style: context.general.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          Text(
            'CUTTING-EDGE GADGETS',
            style: context.general.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: context.padding.onlyTopLow,
            child: Text(
              'Step Into Our World Of Innovation And Discover',
              style: context.general.textTheme.bodyMedium
                  ?.copyWith(color: Colors.grey),
            ),
          ),
          Text(
            'The Gadgets That Will Revolutionize Your Life',
            style: context.general.textTheme.bodyMedium
                ?.copyWith(color: Colors.grey),
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(100),
            child: SizedBox(
                height: context.sized.dynamicHeight(.15),
                child: Image.asset('assets/png/ic_arrow_right.png')),
          )
        ],
      ),
    );
  }
}
