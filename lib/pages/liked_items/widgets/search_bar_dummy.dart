import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/utils/others.dart';

class SearchBarDummy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 20.0),
      child: InkWell(
        onTap: () => context.router.root
            .innerRouterOf<StackRouter>('HomeWrapperRoute')!
            .innerRouterOf<TabsRouter>('HomeRoute')!
            .setActiveIndex(4),
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 24.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: secondaryColor,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.02,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SvgPicture.asset(
                'icons/search.svg',
                height: 20.0,
                width: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
