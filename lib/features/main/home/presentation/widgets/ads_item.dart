import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../domain/entities/carousel_entity.dart';

class AdsItem extends StatelessWidget {
  const AdsItem({
    super.key,
    required this.carousel,
  });

  final CarouselEntity carousel;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.p12),
        ),
        shadows: const [

        ],
      ),
      child: Stack(
        children: [
          Container(
            width: context.queryWidth ,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                    AppConstants.imageUrl + carousel.image!),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.r12),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  carousel.titleEn!,
                  style: CustomTextStyle.kTextStyleF12.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ).paddingAll(
              Dimensions.p8,
            ),
          ),
        ],
      ),
    );
  }
}
