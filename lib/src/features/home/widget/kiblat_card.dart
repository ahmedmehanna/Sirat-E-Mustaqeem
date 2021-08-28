import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/routes.dart';
import '../../../core/util/constants.dart';
import 'prayer_timing_widget.dart';

class KiblatCard extends StatelessWidget {
  const KiblatCard();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 3,
          sigmaY: 3,
        ),
        child: Container(
          padding: kCardPadding,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background.withOpacity(0.85),
            borderRadius: kCardBorderRadius,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sirat',
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/images/home_icon/svg/noti.svg',
                      width: 24.w,
                      color: Theme.of(context).textTheme.bodyText2!.color,
                    ),
                  )
                ],
              ),
              Divider(),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current Location',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change Location',
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: PrayerTimingWidget(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteGenerator.qibla);
                    },
                    child: SvgPicture.asset(
                      'assets/images/home_icon/svg/kiblat.svg',
                      width: 64.w,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
